lbl_803FD440:
/* 803FD440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD444  7C 08 02 A6 */	mflr r0
/* 803FD448  3C A0 80 66 */	lis r5, l_mcd_file_table@ha /* 0x8065E708@ha */
/* 803FD44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD450  38 C5 E7 08 */	addi r6, r5, l_mcd_file_table@l /* 0x8065E708@l */
/* 803FD454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803FD458  7C 9F 23 78 */	mr r31, r4
/* 803FD45C  80 03 01 9C */	lwz r0, 0x19c(r3)
/* 803FD460  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FD464  2C 00 00 01 */	cmpwi r0, 1
/* 803FD468  80 06 00 0C */	lwz r0, 0xc(r6)
/* 803FD46C  40 82 00 0C */	bne lbl_803FD478
/* 803FD470  3C 80 80 66 */	lis r4, l_mCD_land_file_name_dummy@ha /* 0x8065E6A8@ha */
/* 803FD474  38 04 E6 A8 */	addi r0, r4, l_mCD_land_file_name_dummy@l /* 0x8065E6A8@l */
lbl_803FD478:
/* 803FD478  2C 05 FF FF */	cmpwi r5, -1
/* 803FD47C  41 82 00 38 */	beq lbl_803FD4B4
/* 803FD480  1C C5 00 94 */	mulli r6, r5, 0x94
/* 803FD484  7C 04 03 78 */	mr r4, r0
/* 803FD488  38 C6 00 54 */	addi r6, r6, 0x54
/* 803FD48C  7C C3 32 14 */	add r6, r3, r6
/* 803FD490  7C C3 33 78 */	mr r3, r6
/* 803FD494  38 C6 00 74 */	addi r6, r6, 0x74
/* 803FD498  4B FF BD 65 */	bl mCD_set_file_status_bg
/* 803FD49C  2C 03 00 01 */	cmpwi r3, 1
/* 803FD4A0  40 82 00 18 */	bne lbl_803FD4B8
/* 803FD4A4  80 9F 00 00 */	lwz r4, 0(r31)
/* 803FD4A8  38 04 00 01 */	addi r0, r4, 1
/* 803FD4AC  90 1F 00 00 */	stw r0, 0(r31)
/* 803FD4B0  48 00 00 08 */	b lbl_803FD4B8
lbl_803FD4B4:
/* 803FD4B4  38 60 FF FF */	li r3, -1
lbl_803FD4B8:
/* 803FD4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD4BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803FD4C0  7C 08 03 A6 */	mtlr r0
/* 803FD4C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD4C8  4E 80 00 20 */	blr 
