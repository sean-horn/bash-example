set -eo pipefail

echo "--- :package: Build job checkout directory"

pwd
ls -la


echo "--- :evergreen_tree: Build job environment"

env


echo "+++ :hammer: Example tests"

echo -e "\033[33mCongratulations!\033[0m You've successfully run your first build on Buildkite! 👍

\033[33m$(cat artifacts/thumbsup.txt)\033[0m

If you have any questions or need help email support@buildkite.com, we'd be happy to help!

\033[31m<3\033[0m Buildkite
"


echo "+++ :frame_with_picture: Inline image uploaded as a build artifact"

function inline_image {
  printf '\033]1338;url='"$1"';alt='"$2"'\a\n'
}

function its_alive {
  echo "--- :heart_eyes: It's alive!"
  echo "--- And verified email address. Let's see if this shows up in My Builds"
}

inline_image 'artifact://artifacts/image.gif' 'Rainbows'

its_alive
