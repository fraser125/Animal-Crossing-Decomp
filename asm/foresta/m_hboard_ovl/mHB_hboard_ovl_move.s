lbl_805E0B34:
/* 805E0B34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E0B38  7C 08 02 A6 */	mflr r0
/* 805E0B3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E0B40  39 61 00 20 */	addi r11, r1, 0x20
/* 805E0B44  4B AB A3 91 */	bl func_8009AED4
/* 805E0B48  7C 7D 1B 78 */	mr r29, r3
/* 805E0B4C  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E0B50  3B DF 00 E4 */	addi r30, r31, 0xe4
/* 805E0B54  81 9F 00 F0 */	lwz r12, 0xf0(r31)
/* 805E0B58  7D 89 03 A6 */	mtctr r12
/* 805E0B5C  4E 80 04 21 */	bctrl 
/* 805E0B60  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E0B64  3C 60 80 6D */	lis r3, ovl_move_proc@ha /* 0x806CD2B0@ha */
/* 805E0B68  38 A3 D2 B0 */	addi r5, r3, ovl_move_proc@l /* 0x806CD2B0@l */
/* 805E0B6C  7F A3 EB 78 */	mr r3, r29
/* 805E0B70  54 00 10 3A */	slwi r0, r0, 2
/* 805E0B74  7F C4 F3 78 */	mr r4, r30
/* 805E0B78  7D 85 00 2E */	lwzx r12, r5, r0
/* 805E0B7C  7D 89 03 A6 */	mtctr r12
/* 805E0B80  4E 80 04 21 */	bctrl 
/* 805E0B84  80 1E 00 04 */	lwz r0, 4(r30)
/* 805E0B88  2C 00 00 01 */	cmpwi r0, 1
/* 805E0B8C  41 82 00 48 */	beq lbl_805E0BD4
/* 805E0B90  40 80 00 10 */	bge lbl_805E0BA0
/* 805E0B94  2C 00 00 00 */	cmpwi r0, 0
/* 805E0B98  40 80 00 34 */	bge lbl_805E0BCC
/* 805E0B9C  48 00 00 38 */	b lbl_805E0BD4
lbl_805E0BA0:
/* 805E0BA0  2C 00 00 03 */	cmpwi r0, 3
/* 805E0BA4  40 80 00 30 */	bge lbl_805E0BD4
/* 805E0BA8  80 9D 00 2C */	lwz r4, 0x2c(r29)
/* 805E0BAC  7F A3 EB 78 */	mr r3, r29
/* 805E0BB0  80 84 09 84 */	lwz r4, 0x984(r4)
/* 805E0BB4  81 84 01 1C */	lwz r12, 0x11c(r4)
/* 805E0BB8  7D 89 03 A6 */	mtctr r12
/* 805E0BBC  4E 80 04 21 */	bctrl 
/* 805E0BC0  38 00 00 01 */	li r0, 1
/* 805E0BC4  90 1F 09 3C */	stw r0, 0x93c(r31)
/* 805E0BC8  48 00 00 0C */	b lbl_805E0BD4
lbl_805E0BCC:
/* 805E0BCC  38 00 00 00 */	li r0, 0
/* 805E0BD0  90 1F 09 3C */	stw r0, 0x93c(r31)
lbl_805E0BD4:
/* 805E0BD4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E0BD8  4B AB A3 49 */	bl func_8009AF20
/* 805E0BDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E0BE0  7C 08 03 A6 */	mtlr r0
/* 805E0BE4  38 21 00 20 */	addi r1, r1, 0x20
/* 805E0BE8  4E 80 00 20 */	blr 
