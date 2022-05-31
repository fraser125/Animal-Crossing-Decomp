lbl_8042AB98:
/* 8042AB98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042AB9C  7C 08 02 A6 */	mflr r0
/* 8042ABA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042ABA4  39 61 00 20 */	addi r11, r1, 0x20
/* 8042ABA8  4B C7 03 2D */	bl func_8009AED4
/* 8042ABAC  7C 7D 1B 78 */	mr r29, r3
/* 8042ABB0  7C 9E 23 78 */	mr r30, r4
/* 8042ABB4  83 E3 01 80 */	lwz r31, 0x180(r3)
/* 8042ABB8  7F C3 F3 78 */	mr r3, r30
/* 8042ABBC  4B FF FE 39 */	bl func_8042A9F4
/* 8042ABC0  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 8042ABC4  2C 00 00 05 */	cmpwi r0, 5
/* 8042ABC8  40 82 00 14 */	bne lbl_8042ABDC
/* 8042ABCC  7F A3 EB 78 */	mr r3, r29
/* 8042ABD0  7F C4 F3 78 */	mr r4, r30
/* 8042ABD4  38 A0 00 03 */	li r5, 3
/* 8042ABD8  48 00 09 3D */	bl aID_setupAction
lbl_8042ABDC:
/* 8042ABDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8042ABE0  4B C7 03 41 */	bl func_8009AF20
/* 8042ABE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042ABE8  7C 08 03 A6 */	mtlr r0
/* 8042ABEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8042ABF0  4E 80 00 20 */	blr 
