lbl_803CF078:
/* 803CF078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CF07C  7C 08 02 A6 */	mflr r0
/* 803CF080  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CF084  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF088  4B CC BE 41 */	bl func_8009AEC8
/* 803CF08C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 803CF090  3C 60 80 97 */	lis r3, data_80977350@ha /* 0x80977350@ha */
/* 803CF094  28 1E 00 06 */	cmplwi r30, 6
/* 803CF098  3B 60 00 00 */	li r27, 0
/* 803CF09C  38 03 73 50 */	addi r0, r3, data_80977350@l /* 0x80977350@l */
/* 803CF0A0  7C 1C 03 78 */	mr r28, r0
/* 803CF0A4  40 80 00 68 */	bge lbl_803CF10C
/* 803CF0A8  3C 60 80 66 */	lis r3, npc_looks_table@ha /* 0x8065A388@ha */
/* 803CF0AC  3B 40 00 00 */	li r26, 0
/* 803CF0B0  38 03 A3 88 */	addi r0, r3, npc_looks_table@l /* 0x8065A388@l */
/* 803CF0B4  7C 1D 03 78 */	mr r29, r0
lbl_803CF0B8:
/* 803CF0B8  88 1D 00 00 */	lbz r0, 0(r29)
/* 803CF0BC  7C 1E 00 40 */	cmplw r30, r0
/* 803CF0C0  40 82 00 3C */	bne lbl_803CF0FC
/* 803CF0C4  7F 43 D3 78 */	mr r3, r26
/* 803CF0C8  7F 84 E3 78 */	mr r4, r28
/* 803CF0CC  38 A0 00 EC */	li r5, 0xec
/* 803CF0D0  4B FF FF 8D */	bl mNpc_GetDefGrowPermission
/* 803CF0D4  7C 7F 1B 78 */	mr r31, r3
/* 803CF0D8  7F 43 D3 78 */	mr r3, r26
/* 803CF0DC  4B FF FF 45 */	bl mNpc_GetHaveAppeared_idx
/* 803CF0E0  2C 03 00 00 */	cmpwi r3, 0
/* 803CF0E4  40 82 00 18 */	bne lbl_803CF0FC
/* 803CF0E8  2C 1F 00 00 */	cmpwi r31, 0
/* 803CF0EC  41 82 00 0C */	beq lbl_803CF0F8
/* 803CF0F0  2C 1F 00 01 */	cmpwi r31, 1
/* 803CF0F4  40 82 00 08 */	bne lbl_803CF0FC
lbl_803CF0F8:
/* 803CF0F8  3B 7B 00 01 */	addi r27, r27, 1
lbl_803CF0FC:
/* 803CF0FC  3B 5A 00 01 */	addi r26, r26, 1
/* 803CF100  3B BD 00 01 */	addi r29, r29, 1
/* 803CF104  2C 1A 00 EC */	cmpwi r26, 0xec
/* 803CF108  41 80 FF B0 */	blt lbl_803CF0B8
lbl_803CF10C:
/* 803CF10C  7F 63 DB 78 */	mr r3, r27
/* 803CF110  39 61 00 20 */	addi r11, r1, 0x20
/* 803CF114  4B CC BE 01 */	bl func_8009AF14
/* 803CF118  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CF11C  7C 08 03 A6 */	mtlr r0
/* 803CF120  38 21 00 20 */	addi r1, r1, 0x20
/* 803CF124  4E 80 00 20 */	blr 
