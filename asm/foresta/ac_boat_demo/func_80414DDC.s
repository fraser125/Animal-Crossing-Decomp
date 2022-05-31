lbl_80414DDC:
/* 80414DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80414DE0  7C 08 02 A6 */	mflr r0
/* 80414DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80414DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80414DEC  4B C8 60 E9 */	bl func_8009AED4
/* 80414DF0  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80414DF4  3C C0 81 1D */	lis r6, aBTD_clip@ha /* 0x811CB820@ha */
/* 80414DF8  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80414DFC  7C 9D 23 78 */	mr r29, r4
/* 80414E00  38 06 B8 20 */	addi r0, r6, aBTD_clip@l /* 0x811CB820@l */
/* 80414E04  7C 7E 1B 78 */	mr r30, r3
/* 80414E08  3F E5 00 02 */	addis r31, r5, 2
/* 80414E0C  38 80 00 08 */	li r4, 8
/* 80414E10  90 1F 60 B0 */	stw r0, 0x60b0(r31)
/* 80414E14  7C 03 03 78 */	mr r3, r0
/* 80414E18  4B C4 82 51 */	bl bzero
/* 80414E1C  80 BF 60 B0 */	lwz r5, 0x60b0(r31)
/* 80414E20  3C 80 80 67 */	lis r4, aBTD_island_ldr@ha /* 0x80674E90@ha */
/* 80414E24  3C 60 80 66 */	lis r3, aBTD_island_prg@ha /* 0x8065FC4C@ha */
/* 80414E28  38 C0 00 04 */	li r6, 4
/* 80414E2C  93 C5 00 00 */	stw r30, 0(r5)
/* 80414E30  38 84 4E 90 */	addi r4, r4, aBTD_island_ldr@l /* 0x80674E90@l */
/* 80414E34  38 03 FC 4C */	addi r0, r3, aBTD_island_prg@l /* 0x8065FC4C@l */
/* 80414E38  3C A0 00 20 */	lis r5, 0x20
/* 80414E3C  80 7F 60 B0 */	lwz r3, 0x60b0(r31)
/* 80414E40  90 C3 00 04 */	stw r6, 4(r3)
/* 80414E44  90 9E 01 A8 */	stw r4, 0x1a8(r30)
/* 80414E48  90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 80414E4C  88 7D 00 E4 */	lbz r3, 0xe4(r29)
/* 80414E50  88 9D 00 E5 */	lbz r4, 0xe5(r29)
/* 80414E54  7C 63 07 74 */	extsb r3, r3
/* 80414E58  7C 84 07 74 */	extsb r4, r4
/* 80414E5C  4B F9 15 11 */	bl mFI_CheckBlockKind
/* 80414E60  2C 03 00 01 */	cmpwi r3, 1
/* 80414E64  40 82 00 10 */	bne lbl_80414E74
/* 80414E68  38 00 00 01 */	li r0, 1
/* 80414E6C  90 1E 01 90 */	stw r0, 0x190(r30)
/* 80414E70  90 1E 01 A4 */	stw r0, 0x1a4(r30)
lbl_80414E74:
/* 80414E74  7F C3 F3 78 */	mr r3, r30
/* 80414E78  7F A4 EB 78 */	mr r4, r29
/* 80414E7C  38 A0 00 00 */	li r5, 0
/* 80414E80  48 00 0B C1 */	bl aBTD_setupAction
/* 80414E84  39 61 00 20 */	addi r11, r1, 0x20
/* 80414E88  4B C8 60 99 */	bl func_8009AF20
/* 80414E8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80414E90  7C 08 03 A6 */	mtlr r0
/* 80414E94  38 21 00 20 */	addi r1, r1, 0x20
/* 80414E98  4E 80 00 20 */	blr 
