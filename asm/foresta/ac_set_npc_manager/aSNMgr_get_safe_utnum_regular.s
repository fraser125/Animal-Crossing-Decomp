lbl_80497C98:
/* 80497C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80497C9C  7C 08 02 A6 */	mflr r0
/* 80497CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80497CA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80497CA8  4B C0 32 29 */	bl func_8009AED0
/* 80497CAC  7C BE 2B 78 */	mr r30, r5
/* 80497CB0  7C DF 33 78 */	mr r31, r6
/* 80497CB4  7C 7C 1B 78 */	mr r28, r3
/* 80497CB8  7C 9D 23 78 */	mr r29, r4
/* 80497CBC  7F C3 F3 78 */	mr r3, r30
/* 80497CC0  7F E4 FB 78 */	mr r4, r31
/* 80497CC4  4B F0 F4 91 */	bl mFI_BkNumtoUtFGTop
/* 80497CC8  7C 65 1B 78 */	mr r5, r3
/* 80497CCC  7F 83 E3 78 */	mr r3, r28
/* 80497CD0  7F A4 EB 78 */	mr r4, r29
/* 80497CD4  4B FF FC 49 */	bl aSNMgr_get_safe_sp_event_structure
/* 80497CD8  7F 83 E3 78 */	mr r3, r28
/* 80497CDC  7F A4 EB 78 */	mr r4, r29
/* 80497CE0  7F C5 F3 78 */	mr r5, r30
/* 80497CE4  7F E6 FB 78 */	mr r6, r31
/* 80497CE8  4B FF FC D1 */	bl aSNMgr_get_safe_utnum_3x3
/* 80497CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80497CF0  40 82 00 18 */	bne lbl_80497D08
/* 80497CF4  7F 83 E3 78 */	mr r3, r28
/* 80497CF8  7F A4 EB 78 */	mr r4, r29
/* 80497CFC  7F C5 F3 78 */	mr r5, r30
/* 80497D00  7F E6 FB 78 */	mr r6, r31
/* 80497D04  4B FF FD CD */	bl aSNMgr_get_safe_utnum_in_block
lbl_80497D08:
/* 80497D08  39 61 00 20 */	addi r11, r1, 0x20
/* 80497D0C  4B C0 32 11 */	bl func_8009AF1C
/* 80497D10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80497D14  7C 08 03 A6 */	mtlr r0
/* 80497D18  38 21 00 20 */	addi r1, r1, 0x20
/* 80497D1C  4E 80 00 20 */	blr 
