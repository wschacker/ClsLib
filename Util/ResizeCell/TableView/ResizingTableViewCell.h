
#import <UIKit/UIKit.h>
#import "ResizingCellProtocol.h"
//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"
/**
 * Class that implements Dynamic resizing protocol. Subclass this
 * to work with auto resizing of cells.
 */
@interface ResizingTableViewCell : UITableViewCell <ResizingCellProtocol>

@end
 