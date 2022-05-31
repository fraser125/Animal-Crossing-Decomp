lbl_8039BF34:
/* 8039BF34  A8 A3 00 0A */	lha r5, 0xa(r3)
/* 8039BF38  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8039BF3C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8039BF40  38 C0 00 01 */	li r6, 1
/* 8039BF44  3C 84 00 02 */	addis r4, r4, 2
/* 8039BF48  2C 05 00 49 */	cmpwi r5, 0x49
/* 8039BF4C  88 04 05 54 */	lbz r0, 0x554(r4)
/* 8039BF50  41 82 00 3C */	beq lbl_8039BF8C
/* 8039BF54  40 80 00 10 */	bge lbl_8039BF64
/* 8039BF58  2C 05 00 48 */	cmpwi r5, 0x48
/* 8039BF5C  40 80 00 50 */	bge lbl_8039BFAC
/* 8039BF60  48 00 00 6C */	b lbl_8039BFCC
lbl_8039BF64:
/* 8039BF64  2C 05 00 50 */	cmpwi r5, 0x50
/* 8039BF68  40 80 00 64 */	bge lbl_8039BFCC
/* 8039BF6C  7C 00 07 34 */	extsh r0, r0
/* 8039BF70  7C 00 28 00 */	cmpw r0, r5
/* 8039BF74  41 82 00 5C */	beq lbl_8039BFD0
/* 8039BF78  38 00 00 00 */	li r0, 0
/* 8039BF7C  38 C0 00 00 */	li r6, 0
/* 8039BF80  90 03 00 04 */	stw r0, 4(r3)
/* 8039BF84  90 03 00 00 */	stw r0, 0(r3)
/* 8039BF88  48 00 00 48 */	b lbl_8039BFD0
lbl_8039BF8C:
/* 8039BF8C  7C 00 07 34 */	extsh r0, r0
/* 8039BF90  2C 00 00 4E */	cmpwi r0, 0x4e
/* 8039BF94  41 82 00 3C */	beq lbl_8039BFD0
/* 8039BF98  38 00 00 00 */	li r0, 0
/* 8039BF9C  38 C0 00 00 */	li r6, 0
/* 8039BFA0  90 03 00 04 */	stw r0, 4(r3)
/* 8039BFA4  90 03 00 00 */	stw r0, 0(r3)
/* 8039BFA8  48 00 00 28 */	b lbl_8039BFD0
lbl_8039BFAC:
/* 8039BFAC  7C 00 07 34 */	extsh r0, r0
/* 8039BFB0  2C 00 00 4B */	cmpwi r0, 0x4b
/* 8039BFB4  41 82 00 1C */	beq lbl_8039BFD0
/* 8039BFB8  38 00 00 00 */	li r0, 0
/* 8039BFBC  38 C0 00 00 */	li r6, 0
/* 8039BFC0  90 03 00 04 */	stw r0, 4(r3)
/* 8039BFC4  90 03 00 00 */	stw r0, 0(r3)
/* 8039BFC8  48 00 00 08 */	b lbl_8039BFD0
lbl_8039BFCC:
/* 8039BFCC  38 C0 00 00 */	li r6, 0
lbl_8039BFD0:
/* 8039BFD0  7C C3 33 78 */	mr r3, r6
/* 8039BFD4  4E 80 00 20 */	blr 
