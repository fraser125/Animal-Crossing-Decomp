lbl_805EFFC0:
/* 805EFFC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EFFC4  7C 08 02 A6 */	mflr r0
/* 805EFFC8  28 04 00 00 */	cmplwi r4, 0
/* 805EFFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EFFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EFFD4  93 C1 00 08 */	stw r30, 8(r1)
/* 805EFFD8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EFFDC  83 E3 09 C0 */	lwz r31, 0x9c0(r3)
/* 805EFFE0  41 82 00 14 */	beq lbl_805EFFF4
/* 805EFFE4  8B C4 03 64 */	lbz r30, 0x364(r4)
/* 805EFFE8  88 64 03 65 */	lbz r3, 0x365(r4)
/* 805EFFEC  88 04 03 67 */	lbz r0, 0x367(r4)
/* 805EFFF0  48 00 00 28 */	b lbl_805F0018
lbl_805EFFF4:
/* 805EFFF4  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805EFFF8  38 63 00 08 */	addi r3, r3, 8
/* 805EFFFC  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 805F0000  4B FF FB 61 */	bl mTG_get_table_idx
/* 805F0004  28 1F 00 00 */	cmplwi r31, 0
/* 805F0008  41 82 00 0C */	beq lbl_805F0014
/* 805F000C  88 1F 0B A8 */	lbz r0, 0xba8(r31)
/* 805F0010  48 00 00 08 */	b lbl_805F0018
lbl_805F0014:
/* 805F0014  38 00 00 00 */	li r0, 0
lbl_805F0018:
/* 805F0018  2C 1E 00 09 */	cmpwi r30, 9
/* 805F001C  41 82 00 14 */	beq lbl_805F0030
/* 805F0020  40 80 00 4C */	bge lbl_805F006C
/* 805F0024  2C 1E 00 05 */	cmpwi r30, 5
/* 805F0028  41 82 00 24 */	beq lbl_805F004C
/* 805F002C  48 00 00 40 */	b lbl_805F006C
lbl_805F0030:
/* 805F0030  1C 80 17 48 */	mulli r4, r0, 0x1748
/* 805F0034  80 BF 00 00 */	lwz r5, 0(r31)
/* 805F0038  1C 03 01 2A */	mulli r0, r3, 0x12a
/* 805F003C  7C 64 02 14 */	add r3, r4, r0
/* 805F0040  38 63 00 64 */	addi r3, r3, 0x64
/* 805F0044  7C 65 1A 14 */	add r3, r5, r3
/* 805F0048  48 00 00 40 */	b lbl_805F0088
lbl_805F004C:
/* 805F004C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F0050  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F0054  1C 63 01 2A */	mulli r3, r3, 0x12a
/* 805F0058  3C 84 00 02 */	addis r4, r4, 2
/* 805F005C  80 04 61 40 */	lwz r0, 0x6140(r4)
/* 805F0060  38 63 1A 30 */	addi r3, r3, 0x1a30
/* 805F0064  7C 60 1A 14 */	add r3, r0, r3
/* 805F0068  48 00 00 20 */	b lbl_805F0088
lbl_805F006C:
/* 805F006C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805F0070  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805F0074  1C 63 01 2A */	mulli r3, r3, 0x12a
/* 805F0078  3C 84 00 02 */	addis r4, r4, 2
/* 805F007C  80 04 61 3C */	lwz r0, 0x613c(r4)
/* 805F0080  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 805F0084  7C 60 1A 14 */	add r3, r0, r3
lbl_805F0088:
/* 805F0088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F008C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F0090  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F0094  7C 08 03 A6 */	mtlr r0
/* 805F0098  38 21 00 10 */	addi r1, r1, 0x10
/* 805F009C  4E 80 00 20 */	blr 
