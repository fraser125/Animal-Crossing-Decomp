lbl_8037FF78:
/* 8037FF78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037FF7C  7C 08 02 A6 */	mflr r0
/* 8037FF80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037FF84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037FF88  7C 7F 1B 78 */	mr r31, r3
/* 8037FF8C  4B FF EE C9 */	bl Camera2_CheckCullingMode
/* 8037FF90  2C 03 00 00 */	cmpwi r3, 0
/* 8037FF94  41 82 01 2C */	beq lbl_803800C0
/* 8037FF98  83 FF 1D B8 */	lwz r31, 0x1db8(r31)
/* 8037FF9C  48 00 01 1C */	b lbl_803800B8
lbl_8037FFA0:
/* 8037FFA0  A8 9F 00 00 */	lha r4, 0(r31)
/* 8037FFA4  2C 04 00 01 */	cmpwi r4, 1
/* 8037FFA8  41 82 01 0C */	beq lbl_803800B4
/* 8037FFAC  38 04 FF AD */	addi r0, r4, -83
/* 8037FFB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8037FFB4  28 00 00 01 */	cmplwi r0, 1
/* 8037FFB8  40 81 00 FC */	ble lbl_803800B4
/* 8037FFBC  38 04 FF B8 */	addi r0, r4, -72
/* 8037FFC0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8037FFC4  28 00 00 01 */	cmplwi r0, 1
/* 8037FFC8  40 81 00 EC */	ble lbl_803800B4
/* 8037FFCC  7C 83 07 34 */	extsh r3, r4
/* 8037FFD0  2C 03 00 3C */	cmpwi r3, 0x3c
/* 8037FFD4  41 82 00 E0 */	beq lbl_803800B4
/* 8037FFD8  2C 03 00 A6 */	cmpwi r3, 0xa6
/* 8037FFDC  41 82 00 D8 */	beq lbl_803800B4
/* 8037FFE0  38 04 FF 84 */	addi r0, r4, -124
/* 8037FFE4  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8037FFE8  28 00 00 01 */	cmplwi r0, 1
/* 8037FFEC  40 81 00 C8 */	ble lbl_803800B4
/* 8037FFF0  2C 03 00 86 */	cmpwi r3, 0x86
/* 8037FFF4  41 82 00 C0 */	beq lbl_803800B4
/* 8037FFF8  2C 03 00 82 */	cmpwi r3, 0x82
/* 8037FFFC  41 82 00 B8 */	beq lbl_803800B4
/* 80380000  2C 03 00 AA */	cmpwi r3, 0xaa
/* 80380004  41 82 00 B0 */	beq lbl_803800B4
/* 80380008  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 8038000C  41 82 00 A8 */	beq lbl_803800B4
/* 80380010  2C 03 00 BC */	cmpwi r3, 0xbc
/* 80380014  41 82 00 A0 */	beq lbl_803800B4
/* 80380018  2C 03 00 BF */	cmpwi r3, 0xbf
/* 8038001C  41 82 00 98 */	beq lbl_803800B4
/* 80380020  2C 03 00 63 */	cmpwi r3, 0x63
/* 80380024  41 82 00 90 */	beq lbl_803800B4
/* 80380028  2C 03 00 B6 */	cmpwi r3, 0xb6
/* 8038002C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80380030  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80380034  40 82 00 10 */	bne lbl_80380044
/* 80380038  3C 60 80 64 */	lis r3, lit_1207@ha /* 0x806414E0@ha */
/* 8038003C  C0 63 14 E0 */	lfs f3, lit_1207@l(r3)  /* 0x806414E0@l */
/* 80380040  48 00 00 60 */	b lbl_803800A0
lbl_80380044:
/* 80380044  2C 03 00 61 */	cmpwi r3, 0x61
/* 80380048  41 82 00 0C */	beq lbl_80380054
/* 8038004C  2C 03 00 60 */	cmpwi r3, 0x60
/* 80380050  40 82 00 10 */	bne lbl_80380060
lbl_80380054:
/* 80380054  3C 60 80 64 */	lis r3, lit_1208@ha /* 0x806414E4@ha */
/* 80380058  C0 63 14 E4 */	lfs f3, lit_1208@l(r3)  /* 0x806414E4@l */
/* 8038005C  48 00 00 44 */	b lbl_803800A0
lbl_80380060:
/* 80380060  2C 03 00 5F */	cmpwi r3, 0x5f
/* 80380064  40 82 00 10 */	bne lbl_80380074
/* 80380068  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064138C@ha */
/* 8038006C  C0 63 13 8C */	lfs f3, lit_570@l(r3)  /* 0x8064138C@l */
/* 80380070  48 00 00 30 */	b lbl_803800A0
lbl_80380074:
/* 80380074  2C 03 00 38 */	cmpwi r3, 0x38
/* 80380078  41 82 00 14 */	beq lbl_8038008C
/* 8038007C  2C 03 00 2A */	cmpwi r3, 0x2a
/* 80380080  41 82 00 0C */	beq lbl_8038008C
/* 80380084  2C 03 00 8F */	cmpwi r3, 0x8f
/* 80380088  40 82 00 10 */	bne lbl_80380098
lbl_8038008C:
/* 8038008C  3C 60 80 64 */	lis r3, lit_1209@ha /* 0x806414E8@ha */
/* 80380090  C0 63 14 E8 */	lfs f3, lit_1209@l(r3)  /* 0x806414E8@l */
/* 80380094  48 00 00 0C */	b lbl_803800A0
lbl_80380098:
/* 80380098  3C 60 80 64 */	lis r3, lit_1210@ha /* 0x806414EC@ha */
/* 8038009C  C0 63 14 EC */	lfs f3, lit_1210@l(r3)  /* 0x806414EC@l */
lbl_803800A0:
/* 803800A0  4B FF EF 11 */	bl Camera2_CheckEnterCullingArea
/* 803800A4  2C 03 00 00 */	cmpwi r3, 0
/* 803800A8  41 82 00 0C */	beq lbl_803800B4
/* 803800AC  38 00 00 01 */	li r0, 1
/* 803800B0  98 1F 01 48 */	stb r0, 0x148(r31)
lbl_803800B4:
/* 803800B4  83 FF 01 58 */	lwz r31, 0x158(r31)
lbl_803800B8:
/* 803800B8  28 1F 00 00 */	cmplwi r31, 0
/* 803800BC  40 82 FE E4 */	bne lbl_8037FFA0
lbl_803800C0:
/* 803800C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803800C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803800C8  7C 08 03 A6 */	mtlr r0
/* 803800CC  38 21 00 10 */	addi r1, r1, 0x10
/* 803800D0  4E 80 00 20 */	blr 