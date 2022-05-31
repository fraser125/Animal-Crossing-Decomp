lbl_80380740:
/* 80380740  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80380744  7C 08 02 A6 */	mflr r0
/* 80380748  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038074C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80380750  93 C1 00 08 */	stw r30, 8(r1)
/* 80380754  7C 7E 1B 78 */	mr r30, r3
/* 80380758  3B FE 1C 00 */	addi r31, r30, 0x1c00
/* 8038075C  4B FF E3 39 */	bl Camera2_setup_main_Base
/* 80380760  38 60 00 00 */	li r3, 0
/* 80380764  90 7F 00 00 */	stw r3, 0(r31)
/* 80380768  80 1E 1B E0 */	lwz r0, 0x1be0(r30)
/* 8038076C  90 1F 00 04 */	stw r0, 4(r31)
/* 80380770  80 1E 1B E4 */	lwz r0, 0x1be4(r30)
/* 80380774  90 1F 00 08 */	stw r0, 8(r31)
/* 80380778  90 7F 00 0C */	stw r3, 0xc(r31)
/* 8038077C  80 1E 1C 5C */	lwz r0, 0x1c5c(r30)
/* 80380780  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80380784  41 82 00 14 */	beq lbl_80380798
/* 80380788  7F C3 F3 78 */	mr r3, r30
/* 8038078C  38 80 00 01 */	li r4, 1
/* 80380790  4B FF FD E9 */	bl Camera2_main_Normal_SetPos_fromPlayer
/* 80380794  48 00 00 10 */	b lbl_803807A4
lbl_80380798:
/* 80380798  7F C3 F3 78 */	mr r3, r30
/* 8038079C  38 80 00 00 */	li r4, 0
/* 803807A0  4B FF FD D9 */	bl Camera2_main_Normal_SetPos_fromPlayer
lbl_803807A4:
/* 803807A4  38 00 00 00 */	li r0, 0
/* 803807A8  90 1E 1B F4 */	stw r0, 0x1bf4(r30)
/* 803807AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803807B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803807B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803807B8  7C 08 03 A6 */	mtlr r0
/* 803807BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803807C0  4E 80 00 20 */	blr 
