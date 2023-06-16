# GitInsightTracker

GitInsightTracker is a dynamic script designed to provide thorough insights into your Git repository. It pulls comprehensive information on commit logs, diff statistics, visual representations of commit history, and more. It is an ideal tool for efficient project tracking and management.

## Contribute

Contributions to the GitInsightTracker project are more than welcome. If you have new ideas or see areas for improvement, don't hesitate to get involved! Here are some tasks we are looking to tackle:

- [ ] Implement ASCII art to visualize the number of commits from each contributor.
- [ ] Create versions of the script for Mac and Linux with a `.sh` extension.
- [ ] Improve the script's output readability, especially when dealing with branches with numerous commits. 

Your input can make this tool even better, so feel free to jump in!

## Installation

1. Clone this repository or directly download the `GitInsightTracker.bat` file.
2. Place the `GitInsightTracker.bat` file in the root directory of your Git repository, or wherever you prefer.

## Usage

Navigate to your Git repository via the terminal or command prompt, then:

1. If you're using Windows command prompt, navigate to the directory containing `GitInsightTracker.bat`. Run the script by typing `GitInsightTracker.bat` and pressing `Enter`.

2. If you're using Git Bash or another shell, navigate to the directory containing `GitInsightTracker.bat`. Run the script by typing `./GitInsightTracker.bat` and hitting `Enter`.

The script outputs a variety of data about your repository, including:

- The total number of Git commits
- Detailed commit messages
- A visual of the commit history graph
- Log statistics
- Changes since the last commit
- A summary of all branches and their commits

After each section, the script pauses and waits for you to press any key before proceeding to the next section. This allows you to browse the information at your own pace.

Explore your Git repository with GitInsightTracker at your leisure!v

## Support

If you run into any issues or have any questions, please create an issue in this repository. We're here to help!

## License

This project is licensed under the terms of the MIT License.
