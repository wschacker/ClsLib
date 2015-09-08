

#import <UIKit/UIKit.h>
#import "ResizingCellProtocol.h"

/**
 * Class that implements Dynamic resizing protocol. Subclass this
 * to work with auto resizing of cells.
 */
@interface ResizingCollectionViewCell : UICollectionViewCell <ResizingCellProtocol>

@end
