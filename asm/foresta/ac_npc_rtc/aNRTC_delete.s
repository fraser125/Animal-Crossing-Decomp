lbl_80573974:
/* 80573974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80573978  7C 08 02 A6 */	mflr r0
/* 8057397C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80573980  39 61 00 20 */	addi r11, r1, 0x20
/* 80573984  4B B2 75 51 */	bl func_8009AED4
/* 80573988  7C 7D 1B 78 */	mr r29, r3
/* 8057398C  4B E4 BD 1D */	bl func_803BF6A8
/* 80573990  7C 60 1B 78 */	mr r0, r3
/* 80573994  38 61 00 08 */	addi r3, r1, 8
/* 80573998  7C 1E 03 78 */	mr r30, r0
/* 8057399C  4B E8 AC A9 */	bl mCD_EraseBrokenLand_bg
/* 805739A0  7C 7F 1B 78 */	mr r31, r3
/* 805739A4  28 1F 00 19 */	cmplwi r31, 0x19
/* 805739A8  41 81 00 68 */	bgt lbl_80573A10
/* 805739AC  3C 60 80 6C */	lis r3, lit_640@ha /* 0x806BF5CC@ha */
/* 805739B0  57 E0 10 3A */	slwi r0, r31, 2
/* 805739B4  38 63 F5 CC */	addi r3, r3, lit_640@l /* 0x806BF5CC@l */
/* 805739B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805739BC  7C 09 03 A6 */	mtctr r0
/* 805739C0  4E 80 04 20 */	bctr 
lbl_805739C4:
/* 805739C4  38 00 00 03 */	li r0, 3
/* 805739C8  7F C3 F3 78 */	mr r3, r30
/* 805739CC  90 1D 09 A8 */	stw r0, 0x9a8(r29)
/* 805739D0  38 80 09 DE */	li r4, 0x9de
/* 805739D4  4B E4 C5 F1 */	bl mMsg_Set_continue_msg_num
/* 805739D8  48 00 00 4C */	b lbl_80573A24
lbl_805739DC:
/* 805739DC  38 00 00 01 */	li r0, 1
/* 805739E0  7F C3 F3 78 */	mr r3, r30
/* 805739E4  90 1D 09 A8 */	stw r0, 0x9a8(r29)
/* 805739E8  38 80 09 DF */	li r4, 0x9df
/* 805739EC  4B E4 C5 D9 */	bl mMsg_Set_continue_msg_num
/* 805739F0  48 00 00 34 */	b lbl_80573A24
lbl_805739F4:
/* 805739F4  48 00 00 4C */	b lbl_80573A40
lbl_805739F8:
/* 805739F8  38 00 00 03 */	li r0, 3
/* 805739FC  7F C3 F3 78 */	mr r3, r30
/* 80573A00  90 1D 09 A8 */	stw r0, 0x9a8(r29)
/* 80573A04  38 80 09 E1 */	li r4, 0x9e1
/* 80573A08  4B E4 C5 BD */	bl mMsg_Set_continue_msg_num
/* 80573A0C  48 00 00 18 */	b lbl_80573A24
lbl_80573A10:
/* 80573A10  38 00 00 01 */	li r0, 1
/* 80573A14  7F C3 F3 78 */	mr r3, r30
/* 80573A18  90 1D 09 A8 */	stw r0, 0x9a8(r29)
/* 80573A1C  38 80 09 DF */	li r4, 0x9df
/* 80573A20  4B E4 C5 A5 */	bl mMsg_Set_continue_msg_num
lbl_80573A24:
/* 80573A24  2C 1F 00 19 */	cmpwi r31, 0x19
/* 80573A28  41 82 00 18 */	beq lbl_80573A40
/* 80573A2C  7F C3 F3 78 */	mr r3, r30
/* 80573A30  4B E4 D3 1D */	bl mMsg_Unset_LockContinue
/* 80573A34  7F A3 EB 78 */	mr r3, r29
/* 80573A38  38 80 00 0A */	li r4, 0xa
/* 80573A3C  48 00 03 0D */	bl aNRTC_change_talk_proc
lbl_80573A40:
/* 80573A40  39 61 00 20 */	addi r11, r1, 0x20
/* 80573A44  4B B2 74 DD */	bl func_8009AF20
/* 80573A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80573A4C  7C 08 03 A6 */	mtlr r0
/* 80573A50  38 21 00 20 */	addi r1, r1, 0x20
/* 80573A54  4E 80 00 20 */	blr 
