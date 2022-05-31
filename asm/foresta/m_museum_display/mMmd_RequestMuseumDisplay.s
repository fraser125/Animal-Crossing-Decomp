lbl_803C7928:
/* 803C7928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C792C  7C 08 02 A6 */	mflr r0
/* 803C7930  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7938  7C 7F 1B 78 */	mr r31, r3
/* 803C793C  4B FE C1 CD */	bl mLd_PlayerManKindCheck
/* 803C7940  2C 03 00 00 */	cmpwi r3, 0
/* 803C7944  40 82 01 CC */	bne lbl_803C7B10
/* 803C7948  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C794C  28 03 1E EC */	cmplwi r3, 0x1eec
/* 803C7950  41 80 00 6C */	blt lbl_803C79BC
/* 803C7954  28 03 1F 4F */	cmplwi r3, 0x1f4f
/* 803C7958  41 81 00 64 */	bgt lbl_803C79BC
/* 803C795C  28 03 1E EC */	cmplwi r3, 0x1eec
/* 803C7960  38 00 00 00 */	li r0, 0
/* 803C7964  41 80 00 10 */	blt lbl_803C7974
/* 803C7968  28 03 1F 4F */	cmplwi r3, 0x1f4f
/* 803C796C  41 81 00 08 */	bgt lbl_803C7974
/* 803C7970  38 00 00 01 */	li r0, 1
lbl_803C7974:
/* 803C7974  20 00 00 00 */	subfic r0, r0, 0
/* 803C7978  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C797C  7C 80 01 10 */	subfe r4, r0, r0
/* 803C7980  38 03 E1 14 */	addi r0, r3, -7916
/* 803C7984  7C 00 16 70 */	srawi r0, r0, 2
/* 803C7988  7C 1F 20 38 */	and r31, r0, r4
/* 803C798C  7F E3 FB 78 */	mr r3, r31
/* 803C7990  4B FF FA 49 */	bl func_803C73D8
/* 803C7994  2C 03 00 01 */	cmpwi r3, 1
/* 803C7998  41 80 00 14 */	blt lbl_803C79AC
/* 803C799C  7F E3 FB 78 */	mr r3, r31
/* 803C79A0  4B FF FA 39 */	bl func_803C73D8
/* 803C79A4  2C 03 00 05 */	cmpwi r3, 5
/* 803C79A8  40 81 01 68 */	ble lbl_803C7B10
lbl_803C79AC:
/* 803C79AC  7F E3 FB 78 */	mr r3, r31
/* 803C79B0  4B FF FB 69 */	bl mMmd_SetFossil
/* 803C79B4  38 60 00 01 */	li r3, 1
/* 803C79B8  48 00 01 5C */	b lbl_803C7B14
lbl_803C79BC:
/* 803C79BC  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C79C0  28 03 12 AC */	cmplwi r3, 0x12ac
/* 803C79C4  41 80 00 6C */	blt lbl_803C7A30
/* 803C79C8  28 03 12 E7 */	cmplwi r3, 0x12e7
/* 803C79CC  41 81 00 64 */	bgt lbl_803C7A30
/* 803C79D0  28 03 12 AC */	cmplwi r3, 0x12ac
/* 803C79D4  38 00 00 00 */	li r0, 0
/* 803C79D8  41 80 00 10 */	blt lbl_803C79E8
/* 803C79DC  28 03 12 E7 */	cmplwi r3, 0x12e7
/* 803C79E0  41 81 00 08 */	bgt lbl_803C79E8
/* 803C79E4  38 00 00 01 */	li r0, 1
lbl_803C79E8:
/* 803C79E8  20 00 00 00 */	subfic r0, r0, 0
/* 803C79EC  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C79F0  7C 80 01 10 */	subfe r4, r0, r0
/* 803C79F4  38 03 ED 54 */	addi r0, r3, -4780
/* 803C79F8  7C 00 16 70 */	srawi r0, r0, 2
/* 803C79FC  7C 1F 20 38 */	and r31, r0, r4
/* 803C7A00  7F E3 FB 78 */	mr r3, r31
/* 803C7A04  4B FF FA 25 */	bl mMmd_ArtInfo
/* 803C7A08  2C 03 00 01 */	cmpwi r3, 1
/* 803C7A0C  41 80 00 14 */	blt lbl_803C7A20
/* 803C7A10  7F E3 FB 78 */	mr r3, r31
/* 803C7A14  4B FF FA 15 */	bl mMmd_ArtInfo
/* 803C7A18  2C 03 00 05 */	cmpwi r3, 5
/* 803C7A1C  40 81 00 F4 */	ble lbl_803C7B10
lbl_803C7A20:
/* 803C7A20  7F E3 FB 78 */	mr r3, r31
/* 803C7A24  4B FF FB 7D */	bl mMmd_SetArt
/* 803C7A28  38 60 00 01 */	li r3, 1
/* 803C7A2C  48 00 00 E8 */	b lbl_803C7B14
lbl_803C7A30:
/* 803C7A30  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C7A34  28 03 2D 00 */	cmplwi r3, 0x2d00
/* 803C7A38  41 80 00 68 */	blt lbl_803C7AA0
/* 803C7A3C  28 03 2D 28 */	cmplwi r3, 0x2d28
/* 803C7A40  40 80 00 60 */	bge lbl_803C7AA0
/* 803C7A44  28 03 2D 00 */	cmplwi r3, 0x2d00
/* 803C7A48  38 00 00 00 */	li r0, 0
/* 803C7A4C  41 80 00 10 */	blt lbl_803C7A5C
/* 803C7A50  28 03 2D 28 */	cmplwi r3, 0x2d28
/* 803C7A54  40 80 00 08 */	bge lbl_803C7A5C
/* 803C7A58  38 00 00 01 */	li r0, 1
lbl_803C7A5C:
/* 803C7A5C  20 00 00 00 */	subfic r0, r0, 0
/* 803C7A60  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C7A64  7C 80 01 10 */	subfe r4, r0, r0
/* 803C7A68  38 03 D3 00 */	addi r0, r3, -11520
/* 803C7A6C  7C 1F 20 38 */	and r31, r0, r4
/* 803C7A70  7F E3 FB 78 */	mr r3, r31
/* 803C7A74  4B FF FA 05 */	bl mMmd_InsectInfo
/* 803C7A78  2C 03 00 01 */	cmpwi r3, 1
/* 803C7A7C  41 80 00 14 */	blt lbl_803C7A90
/* 803C7A80  7F E3 FB 78 */	mr r3, r31
/* 803C7A84  4B FF F9 F5 */	bl mMmd_InsectInfo
/* 803C7A88  2C 03 00 05 */	cmpwi r3, 5
/* 803C7A8C  40 81 00 84 */	ble lbl_803C7B10
lbl_803C7A90:
/* 803C7A90  7F E3 FB 78 */	mr r3, r31
/* 803C7A94  4B FF FB 95 */	bl mMmd_SetInsect
/* 803C7A98  38 60 00 01 */	li r3, 1
/* 803C7A9C  48 00 00 78 */	b lbl_803C7B14
lbl_803C7AA0:
/* 803C7AA0  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C7AA4  28 03 23 00 */	cmplwi r3, 0x2300
/* 803C7AA8  41 80 00 68 */	blt lbl_803C7B10
/* 803C7AAC  28 03 23 28 */	cmplwi r3, 0x2328
/* 803C7AB0  41 81 00 60 */	bgt lbl_803C7B10
/* 803C7AB4  28 03 23 00 */	cmplwi r3, 0x2300
/* 803C7AB8  38 00 00 00 */	li r0, 0
/* 803C7ABC  41 80 00 10 */	blt lbl_803C7ACC
/* 803C7AC0  28 03 23 28 */	cmplwi r3, 0x2328
/* 803C7AC4  41 81 00 08 */	bgt lbl_803C7ACC
/* 803C7AC8  38 00 00 01 */	li r0, 1
lbl_803C7ACC:
/* 803C7ACC  20 00 00 00 */	subfic r0, r0, 0
/* 803C7AD0  57 E3 04 3E */	clrlwi r3, r31, 0x10
/* 803C7AD4  7C 80 01 10 */	subfe r4, r0, r0
/* 803C7AD8  38 03 DD 00 */	addi r0, r3, -8960
/* 803C7ADC  7C 1F 20 38 */	and r31, r0, r4
/* 803C7AE0  7F E3 FB 78 */	mr r3, r31
/* 803C7AE4  4B FF F9 E5 */	bl mMmd_FishInfo
/* 803C7AE8  2C 03 00 01 */	cmpwi r3, 1
/* 803C7AEC  41 80 00 14 */	blt lbl_803C7B00
/* 803C7AF0  7F E3 FB 78 */	mr r3, r31
/* 803C7AF4  4B FF F9 D5 */	bl mMmd_FishInfo
/* 803C7AF8  2C 03 00 05 */	cmpwi r3, 5
/* 803C7AFC  40 81 00 14 */	ble lbl_803C7B10
lbl_803C7B00:
/* 803C7B00  7F E3 FB 78 */	mr r3, r31
/* 803C7B04  4B FF FB AD */	bl mMmd_SetFish
/* 803C7B08  38 60 00 01 */	li r3, 1
/* 803C7B0C  48 00 00 08 */	b lbl_803C7B14
lbl_803C7B10:
/* 803C7B10  38 60 00 00 */	li r3, 0
lbl_803C7B14:
/* 803C7B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7B1C  7C 08 03 A6 */	mtlr r0
/* 803C7B20  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7B24  4E 80 00 20 */	blr 
