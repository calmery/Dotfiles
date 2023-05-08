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
    try {
      const defaultOutputDevice = await getDefaultOutputDevice();

      if (defaultOutputDevice.transportType === "usb") {
        const { id } = defaultOutputDevice;

        const outputDeviceVolume = await getOutputDeviceVolume(id);
        if (outputDeviceVolume > 0.5) {
          await setOutputDeviceVolume(id, 0.5);

          nodeNotifier.notify({
            title: "Volume Adjuster",
            message: "Volume has been automatically adjusted.",
          });
        }
      }
    } catch(error) {
      nodeNotifier.notify({
        title: "Volume Adjuster",
        message: error.message,
      });
    }
  }
};

main();
