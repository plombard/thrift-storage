// Structures and services definitions used for storage

// Only for thriftui at the moment, possibly going global at one point
namespace java org.breizhbeans.thriftui.storage

struct Row {
  1: i32 key,
  2: string value
}

exception Exception {
  1: i32 code,
  2: string message
}

service ManagerService {
  Row get(1: i32 key),
  void store(1: Row row) throws (1: Exception ex) 
}
