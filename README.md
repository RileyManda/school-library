<div align="center">

  <h1><b>Schoollibrary</b></h1>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 Schoollibrary](#-Schoollibrary)
  - [🛠 Built With](#-built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [Getting Started](#getting-started)
  - [👥 Author](#-author)
  - [🔭 Future Features](#-future-features)
  - [🤝 Contributing](#-contributing)
  - [⭐️ Show your support](#️-show-your-support)
  - [🙏 Acknowledgments](#-acknowledgments)
  - [📝 License](#-license)

<!-- PROJECT DESCRIPTION -->

# 📖 Schoollibrary <a name="about-project"></a>

**Schoollibrary** is a Ruby project that

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby

<!-- Features -->

### Key Features <a name="key-features"></a>

- Custom implementation of the `each` method for the `MyList` class.
- Custom implementations for `all?`, `any?`, and `filter` methods in the `Schoollibrary` module.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

1. Create an instance of the `MyList` class.
2. Utilize the custom methods from the `Schoollibrary` module to work with the list.
3. Test your code using the provided examples.

```ruby
require_relative 'my_list'

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts list.all? { |e| e < 5 }  # Should output: true
puts list.all? { |e| e > 5 }  # Should output: false

# Test #any?
puts list.any? { |e| e == 2 }  # Should output: true
puts list.any? { |e| e == 5 }  # Should output: false

# Test #filter
puts list.filter(&:even?).inspect  # Should output: [2, 4]
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="author"></a>

👤 **RileyManda**

- GitHub: [@RileyManda](https://github.com/RileyManda)
- Twitter: [@rilecodez](https://twitter.com/rileycodez)
- LinkedIn: [rileymanda](https://www.linkedin.com/in/rileymanda/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add additional custom methods for Schoollibrary**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/ClarenceAtim/Enumerable/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can share this project to your friend

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank microverse for this project

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is licensed under the [MIT License](./LICENSE).

<p align="right">(<a href="#readme-top">back to top</a>)</p>
