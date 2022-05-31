lbl_803FE0A4:
/* 803FE0A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FE0A8  7C 08 02 A6 */	mflr r0
/* 803FE0AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FE0B0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE0B4  4B C9 CE 1D */	bl func_8009AED0
/* 803FE0B8  7C 7C 1B 78 */	mr r28, r3
/* 803FE0BC  7C 9D 23 78 */	mr r29, r4
/* 803FE0C0  83 C3 00 00 */	lwz r30, 0(r3)
/* 803FE0C4  2C 1E FF FF */	cmpwi r30, -1
/* 803FE0C8  41 82 00 80 */	beq lbl_803FE148
/* 803FE0CC  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FE0D0  3C 80 80 66 */	lis r4, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FE0D4  38 04 E7 08 */	addi r0, r4, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FE0D8  1C 83 00 0C */	mulli r4, r3, 0xc
/* 803FE0DC  7F E0 22 14 */	add r31, r0, r4
/* 803FE0E0  4B FF C3 31 */	bl mCD_get_offset
/* 803FE0E4  1C BE 00 94 */	mulli r5, r30, 0x94
/* 803FE0E8  7C 60 1B 78 */	mr r0, r3
/* 803FE0EC  7F C8 F3 78 */	mr r8, r30
/* 803FE0F0  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FE0F4  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FE0F8  7C 07 03 78 */	mr r7, r0
/* 803FE0FC  3B C5 00 54 */	addi r30, r5, 0x54
/* 803FE100  80 BC 00 08 */	lwz r5, 8(r28)
/* 803FE104  7F DC F2 14 */	add r30, r28, r30
/* 803FE108  80 DF 00 04 */	lwz r6, 4(r31)
/* 803FE10C  39 3E 00 74 */	addi r9, r30, 0x74
/* 803FE110  4B FF A6 D9 */	bl mCD_write_comp_bg
/* 803FE114  7C 60 1B 78 */	mr r0, r3
/* 803FE118  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 803FE11C  7C 1F 03 78 */	mr r31, r0
/* 803FE120  4B FF C1 95 */	bl mCD_TransErrorCode
/* 803FE124  2C 1F 00 01 */	cmpwi r31, 1
/* 803FE128  90 7E 00 78 */	stw r3, 0x78(r30)
/* 803FE12C  40 82 00 20 */	bne lbl_803FE14C
/* 803FE130  80 7D 00 00 */	lwz r3, 0(r29)
/* 803FE134  38 00 00 02 */	li r0, 2
/* 803FE138  38 63 00 01 */	addi r3, r3, 1
/* 803FE13C  90 7D 00 00 */	stw r3, 0(r29)
/* 803FE140  90 1C 00 04 */	stw r0, 4(r28)
/* 803FE144  48 00 00 08 */	b lbl_803FE14C
lbl_803FE148:
/* 803FE148  3B E0 FF FF */	li r31, -1
lbl_803FE14C:
/* 803FE14C  7F E3 FB 78 */	mr r3, r31
/* 803FE150  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE154  4B C9 CD C9 */	bl func_8009AF1C
/* 803FE158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE15C  7C 08 03 A6 */	mtlr r0
/* 803FE160  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE164  4E 80 00 20 */	blr 
