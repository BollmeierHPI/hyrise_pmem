#pragma once

#include "hyrise.hpp"
#include "utils/abstract_plugin.hpp"
#include "utils/singleton.hpp"

namespace opossum {

class TieringPlugin : public AbstractPlugin {
 public:
  TieringPlugin() {}

  std::string description() const final;

  void start() final;

  void stop() final;
};

}  // namespace opossum
