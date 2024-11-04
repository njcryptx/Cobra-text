# Cobra-Text

Cobra-Text is a simple and secure tool for encrypting and decrypting messages using AES encryption. With Cobra-Text, you can easily protect your sensitive information and communicate securely.

## Features

- **Encryption** : Securely encrypt text messages.
- **Decryption** : Decrypt previously encrypted messages.
- **Command-Line Interface** : Easily encrypt or decrypt messages directly from the terminal.

## Installation

```bash
bash install.sh
```

## Usage

### Running Cobra-Text

To use Cobra-Text, you can execute it directly from the terminal. Below are the usage examples:

#### Help Message

To view the help message and see available options:

```sh
cobra-Text -h
```

#### Encrypt a Message

To encrypt a message, use the `--encrypt` option followed by the message and the password:

```bash
cobra-text --encrypt "Hello, world!" --password "your_password"
```

#### Decrypt a Message

To decrypt a message, use the `--decrypt` option followed by the encrypted message and the password:

```bash
cobra-Text --decrypt "your_encrypted_message_here" --password "your_password"
```

## Notes

- Always use a strong password to enhance security.
- Keep your passwords confidential and never share them with others.
- Encrypted messages should be stored securely as they cannot be decrypted without the correct password.

## Example of Use

Here's a full example of how to use Cobra-Text:

**Encrypt a message:**

```sh
cobra-text --encrypt "This is a secret message." --password "my_secret_password"
```

Output:  
`Encrypted Message: [Base64 encoded string]`

**Decrypt the message:**

```bash
cobra-text --decrypt "[Base64 encoded string]" --password "my_secret_password"
```

Output:  
`Decrypted Message : This is a secret message.`

## Security Recommendations

- Use strong, unique passwords for each encryption.
- Consider using a password manager to store your passwords securely.
- Ensure your environment is secure to prevent unauthorized access to your encrypted messages.

## Contribution

Contributions are welcome! If you have suggestions for improvements or new features, feel free to open an issue or submit a pull request.



