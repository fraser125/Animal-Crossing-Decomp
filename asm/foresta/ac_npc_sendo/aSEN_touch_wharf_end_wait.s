lbl_80574354:
/* 80574354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80574358  7C 08 02 A6 */	mflr r0
/* 8057435C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80574360  39 61 00 20 */	addi r11, r1, 0x20
/* 80574364  4B B2 6B 71 */	bl func_8009AED4
/* 80574368  7C 7D 1B 78 */	mr r29, r3
/* 8057436C  7C 9E 23 78 */	mr r30, r4
/* 80574370  80 63 01 4C */	lwz r3, 0x14c(r3)
/* 80574374  80 03 01 74 */	lwz r0, 0x174(r3)
/* 80574378  2C 00 00 0B */	cmpwi r0, 0xb
/* 8057437C  40 82 00 30 */	bne lbl_805743AC
/* 80574380  80 03 01 90 */	lwz r0, 0x190(r3)
/* 80574384  30 00 FF FF */	addic r0, r0, -1
/* 80574388  7C 60 01 10 */	subfe r3, r0, r0
/* 8057438C  3B E3 00 0D */	addi r31, r3, 0xd
/* 80574390  4B E4 B3 19 */	bl func_803BF6A8
/* 80574394  38 80 00 01 */	li r4, 1
/* 80574398  4B E4 E2 C9 */	bl mMsg_sound_unset_voice_silent
/* 8057439C  7F A3 EB 78 */	mr r3, r29
/* 805743A0  7F C4 F3 78 */	mr r4, r30
/* 805743A4  7F E5 FB 78 */	mr r5, r31
/* 805743A8  48 00 02 C1 */	bl aSEN_setup_think_proc
lbl_805743AC:
/* 805743AC  39 61 00 20 */	addi r11, r1, 0x20
/* 805743B0  4B B2 6B 71 */	bl func_8009AF20
/* 805743B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805743B8  7C 08 03 A6 */	mtlr r0
/* 805743BC  38 21 00 20 */	addi r1, r1, 0x20
/* 805743C0  4E 80 00 20 */	blr 
