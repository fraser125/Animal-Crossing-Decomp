lbl_803FF798:
/* 803FF798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FF79C  7C 08 02 A6 */	mflr r0
/* 803FF7A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FF7A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF7A8  4B C9 B7 29 */	bl func_8009AED0
/* 803FF7AC  7C 7C 1B 78 */	mr r28, r3
/* 803FF7B0  7C 9E 23 78 */	mr r30, r4
/* 803FF7B4  4B FF CB 3D */	bl mCD_write_common
/* 803FF7B8  7C 7F 1B 78 */	mr r31, r3
/* 803FF7BC  2C 1F 00 01 */	cmpwi r31, 1
/* 803FF7C0  40 82 00 DC */	bne lbl_803FF89C
/* 803FF7C4  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 803FF7C8  2C 00 00 02 */	cmpwi r0, 2
/* 803FF7CC  41 82 00 48 */	beq lbl_803FF814
/* 803FF7D0  40 80 00 B0 */	bge lbl_803FF880
/* 803FF7D4  2C 00 00 01 */	cmpwi r0, 1
/* 803FF7D8  40 80 00 08 */	bge lbl_803FF7E0
/* 803FF7DC  48 00 00 A4 */	b lbl_803FF880
lbl_803FF7E0:
/* 803FF7E0  38 00 00 07 */	li r0, 7
/* 803FF7E4  90 1C 00 04 */	stw r0, 4(r28)
/* 803FF7E8  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FF7EC  4B FF AC 6D */	bl mCD_get_size
/* 803FF7F0  90 7C 00 08 */	stw r3, 8(r28)
/* 803FF7F4  80 1C 00 00 */	lwz r0, 0(r28)
/* 803FF7F8  7C 00 00 F8 */	nor r0, r0, r0
/* 803FF7FC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803FF800  90 1C 00 00 */	stw r0, 0(r28)
/* 803FF804  80 7E 00 00 */	lwz r3, 0(r30)
/* 803FF808  38 03 00 01 */	addi r0, r3, 1
/* 803FF80C  90 1E 00 00 */	stw r0, 0(r30)
/* 803FF810  48 00 00 8C */	b lbl_803FF89C
lbl_803FF814:
/* 803FF814  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FF818  80 9C 00 08 */	lwz r4, 8(r28)
/* 803FF81C  4B C5 D8 4D */	bl bzero
/* 803FF820  83 BC 00 0C */	lwz r29, 0xc(r28)
/* 803FF824  3C 60 81 1A */	lis r3, l_mcd_foreigner_file@ha /* 0x81198C38@ha */
/* 803FF828  38 63 8C 38 */	addi r3, r3, l_mcd_foreigner_file@l /* 0x81198C38@l */
/* 803FF82C  38 A0 2E 20 */	li r5, 0x2e20
/* 803FF830  38 9D 30 40 */	addi r4, r29, 0x3040
/* 803FF834  4B C5 D7 E9 */	bl func_8005D01C
/* 803FF838  88 9D 30 74 */	lbz r4, 0x3074(r29)
/* 803FF83C  88 BD 30 75 */	lbz r5, 0x3075(r29)
/* 803FF840  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 803FF844  7C 84 07 74 */	extsb r4, r4
/* 803FF848  7C A5 07 74 */	extsb r5, r5
/* 803FF84C  4B FF FE 75 */	bl mCD_set_passport_icon
/* 803FF850  38 00 00 07 */	li r0, 7
/* 803FF854  90 1C 00 04 */	stw r0, 4(r28)
/* 803FF858  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FF85C  4B FF AB FD */	bl mCD_get_size
/* 803FF860  90 7C 00 08 */	stw r3, 8(r28)
/* 803FF864  38 00 00 08 */	li r0, 8
/* 803FF868  80 7C 00 00 */	lwz r3, 0(r28)
/* 803FF86C  7C 63 18 F8 */	nor r3, r3, r3
/* 803FF870  54 63 07 FE */	clrlwi r3, r3, 0x1f
/* 803FF874  90 7C 00 00 */	stw r3, 0(r28)
/* 803FF878  90 1E 00 00 */	stw r0, 0(r30)
/* 803FF87C  48 00 00 20 */	b lbl_803FF89C
lbl_803FF880:
/* 803FF880  38 00 00 02 */	li r0, 2
/* 803FF884  90 1C 00 04 */	stw r0, 4(r28)
/* 803FF888  80 7C 00 04 */	lwz r3, 4(r28)
/* 803FF88C  4B FF AB CD */	bl mCD_get_size
/* 803FF890  90 7C 00 08 */	stw r3, 8(r28)
/* 803FF894  38 00 00 09 */	li r0, 9
/* 803FF898  90 1E 00 00 */	stw r0, 0(r30)
lbl_803FF89C:
/* 803FF89C  7F E3 FB 78 */	mr r3, r31
/* 803FF8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 803FF8A4  4B C9 B6 79 */	bl func_8009AF1C
/* 803FF8A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FF8AC  7C 08 03 A6 */	mtlr r0
/* 803FF8B0  38 21 00 20 */	addi r1, r1, 0x20
/* 803FF8B4  4E 80 00 20 */	blr 
