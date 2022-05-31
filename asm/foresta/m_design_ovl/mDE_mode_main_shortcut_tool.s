lbl_805D3C3C:
/* 805D3C3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D3C40  7C 08 02 A6 */	mflr r0
/* 805D3C44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D3C48  39 61 00 20 */	addi r11, r1, 0x20
/* 805D3C4C  4B AC 72 85 */	bl func_8009AED0
/* 805D3C50  7C 9D 23 78 */	mr r29, r4
/* 805D3C54  7C 7C 1B 78 */	mr r28, r3
/* 805D3C58  2C 1D 00 04 */	cmpwi r29, 4
/* 805D3C5C  3B FD FF FF */	addi r31, r29, -1
/* 805D3C60  3B DD 00 01 */	addi r30, r29, 1
/* 805D3C64  41 82 00 1C */	beq lbl_805D3C80
/* 805D3C68  40 80 00 1C */	bge lbl_805D3C84
/* 805D3C6C  2C 1D 00 00 */	cmpwi r29, 0
/* 805D3C70  41 82 00 08 */	beq lbl_805D3C78
/* 805D3C74  48 00 00 10 */	b lbl_805D3C84
lbl_805D3C78:
/* 805D3C78  3B E0 00 04 */	li r31, 4
/* 805D3C7C  48 00 00 08 */	b lbl_805D3C84
lbl_805D3C80:
/* 805D3C80  3B C0 00 00 */	li r30, 0
lbl_805D3C84:
/* 805D3C84  38 60 02 00 */	li r3, 0x200
/* 805D3C88  4B DC 22 89 */	bl chkTrigger
/* 805D3C8C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3C90  40 82 00 14 */	bne lbl_805D3CA4
/* 805D3C94  38 60 01 00 */	li r3, 0x100
/* 805D3C98  4B DC 22 79 */	bl chkTrigger
/* 805D3C9C  2C 03 00 00 */	cmpwi r3, 0
/* 805D3CA0  41 82 00 14 */	beq lbl_805D3CB4
lbl_805D3CA4:
/* 805D3CA4  7F 83 E3 78 */	mr r3, r28
/* 805D3CA8  7F A4 EB 78 */	mr r4, r29
/* 805D3CAC  4B FF FE B9 */	bl mDE_main_mode_setup_action
/* 805D3CB0  48 00 00 40 */	b lbl_805D3CF0
lbl_805D3CB4:
/* 805D3CB4  38 60 08 00 */	li r3, 0x800
/* 805D3CB8  4B DC 22 59 */	bl chkTrigger
/* 805D3CBC  2C 03 00 00 */	cmpwi r3, 0
/* 805D3CC0  41 82 00 14 */	beq lbl_805D3CD4
/* 805D3CC4  7F 83 E3 78 */	mr r3, r28
/* 805D3CC8  7F E4 FB 78 */	mr r4, r31
/* 805D3CCC  4B FF FE 99 */	bl mDE_main_mode_setup_action
/* 805D3CD0  48 00 00 20 */	b lbl_805D3CF0
lbl_805D3CD4:
/* 805D3CD4  38 60 04 00 */	li r3, 0x400
/* 805D3CD8  4B DC 22 39 */	bl chkTrigger
/* 805D3CDC  2C 03 00 00 */	cmpwi r3, 0
/* 805D3CE0  41 82 00 10 */	beq lbl_805D3CF0
/* 805D3CE4  7F 83 E3 78 */	mr r3, r28
/* 805D3CE8  7F C4 F3 78 */	mr r4, r30
/* 805D3CEC  4B FF FE 79 */	bl mDE_main_mode_setup_action
lbl_805D3CF0:
/* 805D3CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D3CF4  4B AC 72 29 */	bl func_8009AF1C
/* 805D3CF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D3CFC  7C 08 03 A6 */	mtlr r0
/* 805D3D00  38 21 00 20 */	addi r1, r1, 0x20
/* 805D3D04  4E 80 00 20 */	blr 
