lbl_805FC2A8:
/* 805FC2A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FC2AC  7C 08 02 A6 */	mflr r0
/* 805FC2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FC2B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC2B8  4B A9 EC 19 */	bl func_8009AED0
/* 805FC2BC  7C 7C 1B 78 */	mr r28, r3
/* 805FC2C0  7C 9D 23 78 */	mr r29, r4
/* 805FC2C4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805FC2C8  7C BE 2B 78 */	mr r30, r5
/* 805FC2CC  83 E4 09 7C */	lwz r31, 0x97c(r4)
/* 805FC2D0  4B FF 33 15 */	bl func_805EF5E4
/* 805FC2D4  2C 03 00 00 */	cmpwi r3, 0
/* 805FC2D8  41 82 00 F4 */	beq lbl_805FC3CC
/* 805FC2DC  7F 83 E3 78 */	mr r3, r28
/* 805FC2E0  7F C4 F3 78 */	mr r4, r30
/* 805FC2E4  4B FF FE D5 */	bl mTG_check_move_proc
/* 805FC2E8  2C 03 00 00 */	cmpwi r3, 0
/* 805FC2EC  41 82 00 E0 */	beq lbl_805FC3CC
/* 805FC2F0  7F 83 E3 78 */	mr r3, r28
/* 805FC2F4  7F A4 EB 78 */	mr r4, r29
/* 805FC2F8  38 C1 00 0C */	addi r6, r1, 0xc
/* 805FC2FC  38 A0 00 00 */	li r5, 0
/* 805FC300  4B FF AA 81 */	bl mTG_mark_main
/* 805FC304  2C 03 00 00 */	cmpwi r3, 0
/* 805FC308  41 82 00 C4 */	beq lbl_805FC3CC
/* 805FC30C  7F 83 E3 78 */	mr r3, r28
/* 805FC310  7F A4 EB 78 */	mr r4, r29
/* 805FC314  38 C1 00 08 */	addi r6, r1, 8
/* 805FC318  38 A0 00 03 */	li r5, 3
/* 805FC31C  4B FF AA 65 */	bl mTG_mark_main
/* 805FC320  2C 03 00 00 */	cmpwi r3, 0
/* 805FC324  41 82 00 9C */	beq lbl_805FC3C0
/* 805FC328  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805FC32C  80 01 00 08 */	lwz r0, 8(r1)
/* 805FC330  7C 03 00 00 */	cmpw r3, r0
/* 805FC334  41 82 00 A0 */	beq lbl_805FC3D4
/* 805FC338  2C 03 00 00 */	cmpwi r3, 0
/* 805FC33C  40 82 00 78 */	bne lbl_805FC3B4
/* 805FC340  80 1D 00 00 */	lwz r0, 0(r29)
/* 805FC344  2C 00 00 01 */	cmpwi r0, 1
/* 805FC348  40 82 00 60 */	bne lbl_805FC3A8
/* 805FC34C  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 805FC350  2C 00 00 00 */	cmpwi r0, 0
/* 805FC354  40 82 00 54 */	bne lbl_805FC3A8
/* 805FC358  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 805FC35C  2C 00 00 00 */	cmpwi r0, 0
/* 805FC360  40 82 00 24 */	bne lbl_805FC384
/* 805FC364  7F 83 E3 78 */	mr r3, r28
/* 805FC368  7F A4 EB 78 */	mr r4, r29
/* 805FC36C  38 A0 00 01 */	li r5, 1
/* 805FC370  38 C0 00 00 */	li r6, 0
/* 805FC374  38 E0 00 04 */	li r7, 4
/* 805FC378  39 00 00 00 */	li r8, 0
/* 805FC37C  4B FF A7 51 */	bl mTG_mark_mainX
/* 805FC380  48 00 00 28 */	b lbl_805FC3A8
lbl_805FC384:
/* 805FC384  2C 00 00 01 */	cmpwi r0, 1
/* 805FC388  40 82 00 20 */	bne lbl_805FC3A8
/* 805FC38C  7F 83 E3 78 */	mr r3, r28
/* 805FC390  7F A4 EB 78 */	mr r4, r29
/* 805FC394  38 A0 00 00 */	li r5, 0
/* 805FC398  38 C0 00 00 */	li r6, 0
/* 805FC39C  38 E0 00 04 */	li r7, 4
/* 805FC3A0  39 00 00 00 */	li r8, 0
/* 805FC3A4  4B FF A7 29 */	bl mTG_mark_mainX
lbl_805FC3A8:
/* 805FC3A8  38 60 04 5E */	li r3, 0x45e
/* 805FC3AC  48 03 19 59 */	bl sAdo_SysTrgStart
/* 805FC3B0  48 00 00 24 */	b lbl_805FC3D4
lbl_805FC3B4:
/* 805FC3B4  38 60 04 5F */	li r3, 0x45f
/* 805FC3B8  48 03 19 4D */	bl sAdo_SysTrgStart
/* 805FC3BC  48 00 00 18 */	b lbl_805FC3D4
lbl_805FC3C0:
/* 805FC3C0  38 60 10 0A */	li r3, 0x100a
/* 805FC3C4  48 03 19 41 */	bl sAdo_SysTrgStart
/* 805FC3C8  48 00 00 0C */	b lbl_805FC3D4
lbl_805FC3CC:
/* 805FC3CC  38 60 10 0A */	li r3, 0x100a
/* 805FC3D0  48 03 19 35 */	bl sAdo_SysTrgStart
lbl_805FC3D4:
/* 805FC3D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805FC3D8  4B A9 EB 45 */	bl func_8009AF1C
/* 805FC3DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FC3E0  7C 08 03 A6 */	mtlr r0
/* 805FC3E4  38 21 00 20 */	addi r1, r1, 0x20
/* 805FC3E8  4E 80 00 20 */	blr 
