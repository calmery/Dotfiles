const { execSync } = require("child_process");
const { setInterval } = require("timers/promises");
const {
  getDefaultOutputDevice,
  getOutputDeviceVolume,
  setOutputDeviceVolume,
} = require("macos-audio-devices");
const nodeNotifier = require("node-notifier");

const main = async () => {
  nodeNotifier.notify({
    title: "Volume Adjuster",
    message: "Started",
  });

  for await (const _ of setInterval(1000)) {
    if (
      Number(
        execSync(
          'ps aux | grep -c "[V]olume Adjuster.app" | tr -d "\n"'
        ).toString()
      ) === 0
    ) {
      nodeNotifier.notify({
        title: "Volume Adjuster",
        message: "Exited",
      });

      process.exit(0);
    }
    try {
      const defaultOutputDevice = await getDefaultOutputDevice();

      if (defaultOutputDevice.transportType === "usb") {
        const { id } = defaultOutputDevice;

        const outputDeviceVolume = Number(await getOutputDeviceVolume(id));
        if (outputDeviceVolume === 1) {
          await setOutputDeviceVolume(id, 0.25);

          nodeNotifier.notify({
            title: "Volume Adjuster",
            message: "Volume has been automatically adjusted.",
          });
        }
      }
    } catch (error) {
      nodeNotifier.notify({
        title: "Volume Adjuster",
        message: error.message,
      });
    }
  }
};

main();
