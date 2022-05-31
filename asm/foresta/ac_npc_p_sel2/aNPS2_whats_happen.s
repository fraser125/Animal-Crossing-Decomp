lbl_80568768:
/* 80568768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056876C  7C 08 02 A6 */	mflr r0
/* 80568770  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568774  39 61 00 20 */	addi r11, r1, 0x20
/* 80568778  4B B3 27 59 */	bl func_8009AED0
/* 8056877C  7C 7C 1B 78 */	mr r28, r3
/* 80568780  7C 9D 23 78 */	mr r29, r4
/* 80568784  38 60 00 04 */	li r3, 4
/* 80568788  38 80 00 09 */	li r4, 9
/* 8056878C  4B E2 FC F1 */	bl mDemo_Get_OrderValue
/* 80568790  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80568794  3B C0 FF FF */	li r30, -1
/* 80568798  41 82 01 20 */	beq lbl_805688B8
/* 8056879C  4B E5 6F 0D */	bl func_803BF6A8
/* 805687A0  4B E5 84 F9 */	bl mMsg_Check_MainNormalContinue
/* 805687A4  2C 03 00 01 */	cmpwi r3, 1
/* 805687A8  40 82 01 10 */	bne lbl_805688B8
/* 805687AC  4B E1 AD 95 */	bl func_80383540
/* 805687B0  4B E1 B3 BD */	bl mChoice_Get_ChoseNum
/* 805687B4  2C 03 00 01 */	cmpwi r3, 1
/* 805687B8  41 82 00 A4 */	beq lbl_8056885C
/* 805687BC  40 80 00 A4 */	bge lbl_80568860
/* 805687C0  2C 03 00 00 */	cmpwi r3, 0
/* 805687C4  40 80 00 08 */	bge lbl_805687CC
/* 805687C8  48 00 00 98 */	b lbl_80568860
lbl_805687CC:
/* 805687CC  38 00 FF FF */	li r0, -1
/* 805687D0  90 1C 09 A8 */	stw r0, 0x9a8(r28)
/* 805687D4  4B E9 5F F5 */	bl mCD_CheckPassportFile
/* 805687D8  7C 7E 1B 78 */	mr r30, r3
/* 805687DC  2C 1E FF FF */	cmpwi r30, -1
/* 805687E0  93 DC 09 C0 */	stw r30, 0x9c0(r28)
/* 805687E4  41 82 00 68 */	beq lbl_8056884C
/* 805687E8  38 80 00 03 */	li r4, 3
/* 805687EC  4B FF EC 25 */	bl aNPS2_set_slot_name
/* 805687F0  7F C3 F3 78 */	mr r3, r30
/* 805687F4  4B E9 60 59 */	bl mCD_CheckBrokenPassportFile
/* 805687F8  2C 03 00 01 */	cmpwi r3, 1
/* 805687FC  40 82 00 0C */	bne lbl_80568808
/* 80568800  3B C0 00 07 */	li r30, 7
/* 80568804  48 00 00 5C */	b lbl_80568860
lbl_80568808:
/* 80568808  4B E9 7A 39 */	bl mCD_GetPlayerNum
/* 8056880C  2C 03 00 01 */	cmpwi r3, 1
/* 80568810  90 7C 09 B4 */	stw r3, 0x9b4(r28)
/* 80568814  40 80 00 0C */	bge lbl_80568820
/* 80568818  3B C0 00 05 */	li r30, 5
/* 8056881C  48 00 00 44 */	b lbl_80568860
lbl_80568820:
/* 80568820  40 82 00 1C */	bne lbl_8056883C
/* 80568824  38 00 00 00 */	li r0, 0
/* 80568828  7F 83 E3 78 */	mr r3, r28
/* 8056882C  90 1C 09 A8 */	stw r0, 0x9a8(r28)
/* 80568830  4B FF EC 71 */	bl aNPS2_card_player_idx
/* 80568834  3B C3 00 02 */	addi r30, r3, 2
/* 80568838  48 00 00 28 */	b lbl_80568860
lbl_8056883C:
/* 8056883C  38 00 00 00 */	li r0, 0
/* 80568840  3B C0 00 06 */	li r30, 6
/* 80568844  90 1C 09 B8 */	stw r0, 0x9b8(r28)
/* 80568848  48 00 00 18 */	b lbl_80568860
lbl_8056884C:
/* 8056884C  38 00 FF FF */	li r0, -1
/* 80568850  3B C0 00 01 */	li r30, 1
/* 80568854  90 1C 09 A8 */	stw r0, 0x9a8(r28)
/* 80568858  48 00 00 08 */	b lbl_80568860
lbl_8056885C:
/* 8056885C  3B C0 00 00 */	li r30, 0
lbl_80568860:
/* 80568860  2C 1E FF FF */	cmpwi r30, -1
/* 80568864  41 82 00 54 */	beq lbl_805688B8
/* 80568868  3C 60 80 6C */	lis r3, msg_no_913@ha /* 0x806BE4A0@ha */
/* 8056886C  57 DE 10 3A */	slwi r30, r30, 2
/* 80568870  38 83 E4 A0 */	addi r4, r3, msg_no_913@l /* 0x806BE4A0@l */
/* 80568874  7F 83 E3 78 */	mr r3, r28
/* 80568878  7C 84 F0 2E */	lwzx r4, r4, r30
/* 8056887C  4B FF EC CD */	bl aNPS2_make_msg
/* 80568880  7C 7F 1B 78 */	mr r31, r3
/* 80568884  4B E5 6E 25 */	bl func_803BF6A8
/* 80568888  7F E4 FB 78 */	mr r4, r31
/* 8056888C  4B E5 77 39 */	bl mMsg_Set_continue_msg_num
/* 80568890  3C 80 80 6C */	lis r4, next_talk_idx_912@ha /* 0x806BE480@ha */
/* 80568894  7F 83 E3 78 */	mr r3, r28
/* 80568898  38 A4 E4 80 */	addi r5, r4, next_talk_idx_912@l /* 0x806BE480@l */
/* 8056889C  7F A4 EB 78 */	mr r4, r29
/* 805688A0  7C A5 F0 2E */	lwzx r5, r5, r30
/* 805688A4  48 00 15 25 */	bl aNPS2_change_talk_proc
/* 805688A8  38 60 00 04 */	li r3, 4
/* 805688AC  38 80 00 09 */	li r4, 9
/* 805688B0  38 A0 00 00 */	li r5, 0
/* 805688B4  4B E2 FB 85 */	bl mDemo_Set_OrderValue
lbl_805688B8:
/* 805688B8  39 61 00 20 */	addi r11, r1, 0x20
/* 805688BC  4B B3 26 61 */	bl func_8009AF1C
/* 805688C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805688C4  7C 08 03 A6 */	mtlr r0
/* 805688C8  38 21 00 20 */	addi r1, r1, 0x20
/* 805688CC  4E 80 00 20 */	blr 
