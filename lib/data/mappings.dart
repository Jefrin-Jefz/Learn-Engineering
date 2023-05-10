var mappings = {
  'opticalFiber': TopicData(
      title: 'Optic Fiber',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/Optic_fiber.mp4?alt=media&token=10f2831e-4509-435e-bf8a-b85c9c8e38c7",
      description:
          'An optical fiber is a thin, flexible, and transparent strand of glass or plastic that is used to transmit digital data signals over long distances. The fiber acts as a waveguide, with the light signals bouncing off the inner surface of the fiber, allowing for high-speed and low-loss data transmission.'),
  'generalOpticSystem': TopicData(
      title: 'General Optic System',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
      description:
          'An optical fiber system is a communication technology that uses thin strands of glass or plastic fibers to transmit digital data signals over long distances at high speeds. The signals are converted into light pulses and sent through the fibers, which are protected by a cladding material that reflects the light back into the fiber.'),
  'opticTransmitter': TopicData(
      title: 'Optical Transmitter',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/Optic_transmitter.mp4?alt=media&token=bb2d30c9-4f91-48b5-b848-1af9b526835f",
      description:
          'An optical transmitter is a device that converts electrical signals into optical signals for transmission over an optical fiber network. It typically includes a light source, such as a laser or LED, and a modulation circuit that controls the intensity and frequency of the light to represent the data being transmitted.'),
  'opticReceiver': TopicData(
      title: 'Optic Receiver',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/Optic_receiver.mp4?alt=media&token=ee78b323-36f8-481d-86dc-450336626d67",
      description:
          'An optical receiver is a device that converts optical signals into electrical signals. It is used in optical fiber communication systems to receive data transmitted over an optical fiber. The receiver consists of a photodiode that converts the light signals into electrical signals, which are then processed and decoded by the receiving device.'),
  'generalWirelessSystem': TopicData(
      title: 'General Wireless System',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/General_wireless.mp4?alt=media&token=ec0273f3-7187-4af0-bb82-10316dbc0462",
      description:
          'A wireless communication system is a technology that uses radio frequency signals to transmit data wirelessly between devices. It allows for communication without the need for physical connections such as wires or cables. Wireless systems are used in many applications, including cellular networks, Wi-Fi, Bluetooth, and satellite communication.'),
  'wirelessTransmitter': TopicData(
    title: 'Transmitter',
    url: '',
    description:
        'A wireless transmitter is a device that uses radio waves to transmit data or signals without the need for physical cables or wires. It converts electrical signals into radio waves, which are then sent through the air and received by a receiver on the other end.',
  ),
  'wirelessReceiver': TopicData(
      title: 'Wireless Receiver',
      url:
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
      description:
          'A wireless receiver is a device that captures radio frequency signals transmitted by a wireless transmitter and converts them into digital signals for use by a computer or other electronic device. The receiver typically consists of an antenna, a tuner, and a demodulator, which extract the information from the radio signal.'),
  'amplitudeModulation': TopicData(
      title: 'Amplitude Modulation',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/Amplitude_modulation.mp4?alt=media&token=519f2afc-dd72-4e17-b752-e883dec0e4f9",
      description:
          'Amplitude modulation (AM) is a type of modulation where the amplitude of a carrier signal is varied in proportion to the message signal being transmitted. The resulting modulated signal contains the original message signal and the carrier signal, which can be demodulated to extract the original message signal.'),
  'frequencyModulation': TopicData(
      title: 'Frequency Modulation',
      url:
          "https://firebasestorage.googleapis.com/v0/b/learn-engineering-be8de.appspot.com/o/VID-20230427-WA0039.mp4?alt=media&token=b5aa8a1b-9b1f-4302-be87-35b9deb66bde",
      description:
          'Frequency modulation (FM) is a type of modulation where the frequency of a carrier signal is varied in proportion to the message signal being transmitted. The resulting modulated signal contains the original message signal and the carrier signal, which can be demodulated to extract the original message signal. FM is often used in radio communication due to its resistance to noise.'),
};

class TopicData {
  final String title, url, description;
  TopicData({
    required this.title,
    required this.description,
    required this.url,
  });
}
