lbl_80399E04:
/* 80399E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80399E08  7C 08 02 A6 */	mflr r0
/* 80399E0C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80399E10  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399E14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80399E18  38 C4 85 38 */	addi r6, r4, common_data@l /* 0x81138538@l */
/* 80399E1C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399E20  38 80 00 00 */	li r4, 0
/* 80399E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80399E28  3F E6 00 03 */	addis r31, r6, 3
/* 80399E2C  80 63 00 00 */	lwz r3, 0(r3)
/* 80399E30  38 A0 00 10 */	li r5, 0x10
/* 80399E34  93 C1 00 08 */	stw r30, 8(r1)
/* 80399E38  38 63 00 E0 */	addi r3, r3, 0xe0
/* 80399E3C  83 DF 85 5C */	lwz r30, -0x7aa4(r31)
/* 80399E40  4B C6 95 69 */	bl func_800033A8
/* 80399E44  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399E48  38 80 00 00 */	li r4, 0
/* 80399E4C  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399E50  38 A0 00 10 */	li r5, 0x10
/* 80399E54  80 63 00 00 */	lwz r3, 0(r3)
/* 80399E58  38 63 03 28 */	addi r3, r3, 0x328
/* 80399E5C  4B C6 95 4D */	bl func_800033A8
/* 80399E60  3C 60 80 64 */	lis r3, data_80641CBC@ha /* 0x80641CBC@ha */
/* 80399E64  38 80 00 00 */	li r4, 0
/* 80399E68  38 63 1C BC */	addi r3, r3, data_80641CBC@l /* 0x80641CBC@l */
/* 80399E6C  38 00 00 01 */	li r0, 1
/* 80399E70  80 63 00 00 */	lwz r3, 0(r3)
/* 80399E74  2C 1E 00 0F */	cmpwi r30, 0xf
/* 80399E78  90 83 00 DC */	stw r4, 0xdc(r3)
/* 80399E7C  90 83 02 F0 */	stw r4, 0x2f0(r3)
/* 80399E80  90 83 02 F4 */	stw r4, 0x2f4(r3)
/* 80399E84  90 03 02 F8 */	stw r0, 0x2f8(r3)
/* 80399E88  90 83 02 FC */	stw r4, 0x2fc(r3)
/* 80399E8C  40 80 00 2C */	bge lbl_80399EB8
/* 80399E90  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80399E94  40 80 00 08 */	bge lbl_80399E9C
/* 80399E98  48 00 00 20 */	b lbl_80399EB8
lbl_80399E9C:
/* 80399E9C  3C 80 80 3A */	lis r4, emsg_set@ha /* 0x80399DDC@ha */
/* 80399EA0  7F C3 F3 78 */	mr r3, r30
/* 80399EA4  38 A4 9D DC */	addi r5, r4, emsg_set@l /* 0x80399DDC@l */
/* 80399EA8  38 80 00 00 */	li r4, 0
/* 80399EAC  48 00 02 B1 */	bl mDemo_Request
/* 80399EB0  38 00 00 00 */	li r0, 0
/* 80399EB4  90 1F 85 5C */	stw r0, -0x7aa4(r31)
lbl_80399EB8:
/* 80399EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80399EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80399EC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80399EC4  7C 08 03 A6 */	mtlr r0
/* 80399EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80399ECC  4E 80 00 20 */	blr 
