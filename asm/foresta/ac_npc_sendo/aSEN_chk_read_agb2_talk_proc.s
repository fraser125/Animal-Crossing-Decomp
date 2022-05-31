lbl_80575BC4:
/* 80575BC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80575BC8  7C 08 02 A6 */	mflr r0
/* 80575BCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80575BD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80575BD4  4B B2 53 01 */	bl func_8009AED4
/* 80575BD8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80575BDC  7C 7D 1B 78 */	mr r29, r3
/* 80575BE0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 80575BE4  3B C0 FF FF */	li r30, -1
/* 80575BE8  3F E3 00 03 */	addis r31, r3, 3
/* 80575BEC  38 80 39 80 */	li r4, 0x3980
/* 80575BF0  3B FF A1 C0 */	addi r31, r31, -24128
/* 80575BF4  7F E3 FB 78 */	mr r3, r31
/* 80575BF8  4B AD 49 B9 */	bl mGcgba_CheckRecv
/* 80575BFC  2C 03 00 09 */	cmpwi r3, 9
/* 80575C00  41 82 00 54 */	beq lbl_80575C54
/* 80575C04  40 80 00 44 */	bge lbl_80575C48
/* 80575C08  2C 03 00 01 */	cmpwi r3, 1
/* 80575C0C  41 82 00 08 */	beq lbl_80575C14
/* 80575C10  48 00 00 38 */	b lbl_80575C48
lbl_80575C14:
/* 80575C14  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575C18  7F E4 FB 78 */	mr r4, r31
/* 80575C1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80575C20  3C 63 00 03 */	addis r3, r3, 3
/* 80575C24  38 63 88 C0 */	addi r3, r3, -30528
/* 80575C28  4B E3 FC 39 */	bl mISL_agb_to_gc
/* 80575C2C  4B FF ED BD */	bl aSEN_compare_ram_island_and_agb_island
/* 80575C30  2C 03 00 01 */	cmpwi r3, 1
/* 80575C34  40 82 00 0C */	bne lbl_80575C40
/* 80575C38  3B C0 00 01 */	li r30, 1
/* 80575C3C  48 00 00 18 */	b lbl_80575C54
lbl_80575C40:
/* 80575C40  3B C0 00 00 */	li r30, 0
/* 80575C44  48 00 00 10 */	b lbl_80575C54
lbl_80575C48:
/* 80575C48  38 00 00 02 */	li r0, 2
/* 80575C4C  3B C0 00 02 */	li r30, 2
/* 80575C50  98 1D 09 95 */	stb r0, 0x995(r29)
lbl_80575C54:
/* 80575C54  2C 1E FF FF */	cmpwi r30, -1
/* 80575C58  41 82 00 70 */	beq lbl_80575CC8
/* 80575C5C  4B E4 9A 4D */	bl func_803BF6A8
/* 80575C60  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80575C64  7C 7F 1B 78 */	mr r31, r3
/* 80575C68  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80575C6C  38 C0 00 08 */	li r6, 8
/* 80575C70  3C A5 00 03 */	addis r5, r5, 3
/* 80575C74  38 80 00 01 */	li r4, 1
/* 80575C78  38 A5 A1 C8 */	addi r5, r5, -24120
/* 80575C7C  4B E4 9F D9 */	bl mMsg_Set_free_str
/* 80575C80  7F E3 FB 78 */	mr r3, r31
/* 80575C84  4B E4 B0 C9 */	bl mMsg_Unset_LockContinue
/* 80575C88  3C 60 80 6C */	lis r3, msg_no_917@ha /* 0x806BF884@ha */
/* 80575C8C  57 C0 10 3A */	slwi r0, r30, 2
/* 80575C90  38 83 F8 84 */	addi r4, r3, msg_no_917@l /* 0x806BF884@l */
/* 80575C94  7F A3 EB 78 */	mr r3, r29
/* 80575C98  7C 84 00 2E */	lwzx r4, r4, r0
/* 80575C9C  4B FF EB F9 */	bl aSEN_get_msg_no
/* 80575CA0  7C 64 1B 78 */	mr r4, r3
/* 80575CA4  7F E3 FB 78 */	mr r3, r31
/* 80575CA8  4B E4 AC F1 */	bl mMsg_ChangeMsgData
/* 80575CAC  7F E3 FB 78 */	mr r3, r31
/* 80575CB0  4B E4 B0 79 */	bl mMsg_Set_ForceNext
/* 80575CB4  3C 80 80 6C */	lis r4, next_talk_idx_916@ha /* 0x806BF880@ha */
/* 80575CB8  7F A3 EB 78 */	mr r3, r29
/* 80575CBC  38 84 F8 80 */	addi r4, r4, next_talk_idx_916@l /* 0x806BF880@l */
/* 80575CC0  7C 84 F0 AE */	lbzx r4, r4, r30
/* 80575CC4  48 00 02 A9 */	bl aSEN_change_talk_proc
lbl_80575CC8:
/* 80575CC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80575CCC  4B B2 52 55 */	bl func_8009AF20
/* 80575CD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80575CD4  7C 08 03 A6 */	mtlr r0
/* 80575CD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80575CDC  4E 80 00 20 */	blr 
