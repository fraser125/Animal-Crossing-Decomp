lbl_805706A8:
/* 805706A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805706AC  7C 08 02 A6 */	mflr r0
/* 805706B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805706B4  39 61 00 20 */	addi r11, r1, 0x20
/* 805706B8  4B B2 A8 19 */	bl func_8009AED0
/* 805706BC  7C 7C 1B 78 */	mr r28, r3
/* 805706C0  7C 9D 23 78 */	mr r29, r4
/* 805706C4  4B E7 34 A5 */	bl mQst_GetFirstJobData
/* 805706C8  88 03 00 48 */	lbz r0, 0x48(r3)
/* 805706CC  7C 7F 1B 78 */	mr r31, r3
/* 805706D0  38 7F 00 2C */	addi r3, r31, 0x2c
/* 805706D4  54 04 FE 7E */	rlwinm r4, r0, 0x1f, 0x19, 0x1f
/* 805706D8  4B E5 C3 C5 */	bl mNpc_GetOtherAnimalPersonalID
/* 805706DC  7C 7E 1B 78 */	mr r30, r3
/* 805706E0  4B E5 B8 1D */	bl mNpc_SetAnimalPersonalID2Memory
/* 805706E4  28 1C 00 03 */	cmplwi r28, 3
/* 805706E8  40 82 00 14 */	bne lbl_805706FC
/* 805706EC  7F E3 FB 78 */	mr r3, r31
/* 805706F0  7F C4 F3 78 */	mr r4, r30
/* 805706F4  4B E7 39 AD */	bl mQst_SetFirstJobLetter
/* 805706F8  48 00 00 10 */	b lbl_80570708
lbl_805706FC:
/* 805706FC  7F E3 FB 78 */	mr r3, r31
/* 80570700  7F C4 F3 78 */	mr r4, r30
/* 80570704  4B E7 39 C1 */	bl mQst_SetFirstJobLetter2
lbl_80570708:
/* 80570708  38 00 00 01 */	li r0, 1
/* 8057070C  39 61 00 20 */	addi r11, r1, 0x20
/* 80570710  90 1D 09 B8 */	stw r0, 0x9b8(r29)
/* 80570714  4B B2 A8 09 */	bl func_8009AF1C
/* 80570718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057071C  7C 08 03 A6 */	mtlr r0
/* 80570720  38 21 00 20 */	addi r1, r1, 0x20
/* 80570724  4E 80 00 20 */	blr 
