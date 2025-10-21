# INTERNET AND NETWORK BASICS

## INTERNET
- The **Internet** is a vast network of computers that communicate together.
- It is a technical infrastructure allowing billions of computers to connect and send or receive data among each other.

## INTRANET
- Essentially the Internet but restricted to a company or organization only.

## EXTRANET
- Similar to an intranet, but accessible by the company, suppliers, and stakeholders.

## CLIENT
- Computers connected indirectly to the Internet via an **Internet Service Provider (ISP)**.
- Runs web-accessing software available on typical web user's internet-connected devices.

## SERVER
- Computers that host **webpages**, **websites**, or **applications**.

## WHY PACKETS DON'T GET CONFUSED BETWEEN COMPUTERS
- Packets "wrap" the **IP address** of the device they are sent to.
- The first wrap contains the computer’s personal (**private**) IP address assigned by the router.
- The second wrap contains the router’s **public IP address** assigned by the ISP, followed by ISP and so forth.

## ROUTER
- A router is a device that forwards messages between networks.
- It acts like a post office: when a packet arrives, it reads the recipient address and forwards it directly to the correct recipient.
- Serves as a middleman between you and your ISP.
- Has a **public IP address**.
- Assigns each connected device its own local (private) IP address.
- Devices connected to the network have **two IP addresses**: 
  1. Public (router)
  2. Private (local)
- Uses **NAT (Network Address Translation)** to manage local device access.

## MODEM
- Converts network information into a format manageable by telephone infrastructure and vice versa.
- Many home devices combine a modem, router, and switch in one unit.

## WEB
- The Internet is the **infrastructure**.
- The Web is the **service** built on top of that infrastructure.

## NETWORK
- A group of two or more connected devices, such as computers or phones, sharing data, resources, or information.

## WEBPAGE
- A document displayed in a web browser.
- Each webpage is located at a unique web address, known as a **URL**.

## WEBSITE
- A collection of related webpages grouped together with links connecting them.

## WEB SERVER
- Computers that **host** one or more websites on the Internet.
- "Hosting" means making webpages and their associated files available on that computer.

## WEB SERVICE
- Software that responds to requests over the Internet to perform functions or provide data.
- Typically supported by a web server.

## SEARCH ENGINE
- A web service that helps locate other web pages.

## BROWSER
- Software that retrieves and displays webpages.
- It parses and renders webpages before showing them to the user.

## TCP/IP
- Communication protocols defining how data travels across the Internet.

## DNS (Domain Name System)
- Functions like an **address book** for websites that browsers consult to find the IP address of a website.

## HTTP (HyperText Transfer Protocol)
- An application protocol defining communication language between clients and servers.
- HTTP response headers provide additional info about the response; requests can also contain headers.
- Common status codes:
  - `301`: Resource permanently moved
  - `400`: Bad request
  - `403`: Access forbidden
  - `404`: Resource not found
  - `503`: Server error, request cannot be handled

## PROTOCOL
- A set of rules defining how data is exchanged within or between computers.

## PACKETS
- Data transmitted in small **packets**, rather than whole files.
- This improves speed and reliability because individual packets can be rerouted or replaced quickly.

## HOW THE WEB WORKS
- **HTTP** operates between browsers and web servers using commands like **GET**.
- If successful, the server sends the requested resource back to the browser via HTTP.
- Requested resources may trigger further HTTP requests (e.g., images for a webpage background).
- When a client accesses a webpage, the webpage code is downloaded from the server to the client’s device and rendered by the browser.

### Detailed Steps:
1. The browser queries the **DNS server** to find the actual address of the hosting server.
2. The browser sends an **HTTP request** message to the server requesting the website.
3. The message is transmitted over the Internet using **TCP/IP**.
4. If the server responds with `200 OK`, it sends the website files in small chunks called **data packets**.
