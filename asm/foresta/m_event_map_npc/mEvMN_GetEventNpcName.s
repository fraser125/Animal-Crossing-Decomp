lbl_8039FEE0:
/* 8039FEE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039FEE4  7C 08 02 A6 */	mflr r0
/* 8039FEE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039FEEC  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FEF0  4B CF AF E5 */	bl func_8009AED4
/* 8039FEF4  7C 7D 1B 78 */	mr r29, r3
/* 8039FEF8  7C BE 2B 78 */	mr r30, r5
/* 8039FEFC  7C DF 33 78 */	mr r31, r6
/* 8039FF00  7C 83 23 78 */	mr r3, r4
/* 8039FF04  4B FF F5 25 */	bl func_8039F428
/* 8039FF08  7C 64 1B 78 */	mr r4, r3
/* 8039FF0C  2C 04 FF FF */	cmpwi r4, -1
/* 8039FF10  41 82 00 28 */	beq lbl_8039FF38
/* 8039FF14  3C 60 80 65 */	lis r3, set_name@ha /* 0x80652958@ha */
/* 8039FF18  54 80 10 3A */	slwi r0, r4, 2
/* 8039FF1C  38 A3 29 58 */	addi r5, r3, set_name@l /* 0x80652958@l */
/* 8039FF20  7F E6 FB 78 */	mr r6, r31
/* 8039FF24  7D 85 00 2E */	lwzx r12, r5, r0
/* 8039FF28  7F A3 EB 78 */	mr r3, r29
/* 8039FF2C  7F C5 F3 78 */	mr r5, r30
/* 8039FF30  7D 89 03 A6 */	mtctr r12
/* 8039FF34  4E 80 04 21 */	bctrl 
lbl_8039FF38:
/* 8039FF38  39 61 00 20 */	addi r11, r1, 0x20
/* 8039FF3C  4B CF AF E5 */	bl func_8009AF20
/* 8039FF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039FF44  7C 08 03 A6 */	mtlr r0
/* 8039FF48  38 21 00 20 */	addi r1, r1, 0x20
/* 8039FF4C  4E 80 00 20 */	blr 
