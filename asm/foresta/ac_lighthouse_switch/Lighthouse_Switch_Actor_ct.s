lbl_8042C30C:
/* 8042C30C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042C310  7C 08 02 A6 */	mflr r0
/* 8042C314  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042C318  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C31C  4B C6 EB B9 */	bl func_8009AED4
/* 8042C320  7C 9D 23 78 */	mr r29, r4
/* 8042C324  3B E3 03 10 */	addi r31, r3, 0x310
/* 8042C328  3B C3 01 78 */	addi r30, r3, 0x178
/* 8042C32C  4B FF FC 7D */	bl aLS_GetNiceStatus
/* 8042C330  2C 03 00 01 */	cmpwi r3, 1
/* 8042C334  40 82 00 30 */	bne lbl_8042C364
/* 8042C338  7F E3 FB 78 */	mr r3, r31
/* 8042C33C  7F A4 EB 78 */	mr r4, r29
/* 8042C340  38 A0 00 01 */	li r5, 1
/* 8042C344  4B FF FE 05 */	bl aLS_PoleCt
/* 8042C348  7F C3 F3 78 */	mr r3, r30
/* 8042C34C  7F A4 EB 78 */	mr r4, r29
/* 8042C350  38 A0 00 01 */	li r5, 1
/* 8042C354  4B FF FE E5 */	bl aLS_SwitchCt
/* 8042C358  38 60 00 0B */	li r3, 0xb
/* 8042C35C  4B FB AE A1 */	bl mRmTp_IndexLightSwitchON
/* 8042C360  48 00 00 8C */	b lbl_8042C3EC
lbl_8042C364:
/* 8042C364  2C 03 00 00 */	cmpwi r3, 0
/* 8042C368  40 82 00 30 */	bne lbl_8042C398
/* 8042C36C  7F E3 FB 78 */	mr r3, r31
/* 8042C370  7F A4 EB 78 */	mr r4, r29
/* 8042C374  38 A0 00 00 */	li r5, 0
/* 8042C378  4B FF FD D1 */	bl aLS_PoleCt
/* 8042C37C  7F C3 F3 78 */	mr r3, r30
/* 8042C380  7F A4 EB 78 */	mr r4, r29
/* 8042C384  38 A0 00 00 */	li r5, 0
/* 8042C388  4B FF FE B1 */	bl aLS_SwitchCt
/* 8042C38C  38 60 00 0B */	li r3, 0xb
/* 8042C390  4B FB AF 01 */	bl mRmTp_IndexLightSwitchOFF
/* 8042C394  48 00 00 58 */	b lbl_8042C3EC
lbl_8042C398:
/* 8042C398  38 60 00 0B */	li r3, 0xb
/* 8042C39C  4B FB AF 31 */	bl mRmTp_Index2LightSwitchStatus
/* 8042C3A0  2C 03 00 00 */	cmpwi r3, 0
/* 8042C3A4  41 82 00 28 */	beq lbl_8042C3CC
/* 8042C3A8  7F E3 FB 78 */	mr r3, r31
/* 8042C3AC  7F A4 EB 78 */	mr r4, r29
/* 8042C3B0  38 A0 00 01 */	li r5, 1
/* 8042C3B4  4B FF FD 95 */	bl aLS_PoleCt
/* 8042C3B8  7F C3 F3 78 */	mr r3, r30
/* 8042C3BC  7F A4 EB 78 */	mr r4, r29
/* 8042C3C0  38 A0 00 01 */	li r5, 1
/* 8042C3C4  4B FF FE 75 */	bl aLS_SwitchCt
/* 8042C3C8  48 00 00 24 */	b lbl_8042C3EC
lbl_8042C3CC:
/* 8042C3CC  7F E3 FB 78 */	mr r3, r31
/* 8042C3D0  7F A4 EB 78 */	mr r4, r29
/* 8042C3D4  38 A0 00 00 */	li r5, 0
/* 8042C3D8  4B FF FD 71 */	bl aLS_PoleCt
/* 8042C3DC  7F C3 F3 78 */	mr r3, r30
/* 8042C3E0  7F A4 EB 78 */	mr r4, r29
/* 8042C3E4  38 A0 00 00 */	li r5, 0
/* 8042C3E8  4B FF FE 51 */	bl aLS_SwitchCt
lbl_8042C3EC:
/* 8042C3EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8042C3F0  4B C6 EB 31 */	bl func_8009AF20
/* 8042C3F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042C3F8  7C 08 03 A6 */	mtlr r0
/* 8042C3FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8042C400  4E 80 00 20 */	blr 
