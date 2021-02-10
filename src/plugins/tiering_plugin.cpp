#include "tiering_plugin.hpp"
#include <thread>
// TODO fix Fail() in third_party/or-tools/dependencies/install/include/glog/logging.h

#include "memory/kind_memory_manager.hpp"
#include "memory/nvm_memory_resource.hpp"
#include "utils/format_bytes.hpp"

namespace opossum {

std::string TieringPlugin::description() const { return "This is the Hyrise TieringPlugin"; }

void TieringPlugin::start() {
}

void TieringPlugin::stop() {

}

EXPORT_PLUGIN(TieringPlugin)

}  // namespace opossum
