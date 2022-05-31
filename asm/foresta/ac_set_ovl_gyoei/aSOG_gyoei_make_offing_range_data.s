lbl_8049A5D8:
/* 8049A5D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049A5DC  7C 08 02 A6 */	mflr r0
/* 8049A5E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049A5E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8049A5E8  7C DF 33 78 */	mr r31, r6
/* 8049A5EC  93 C1 00 08 */	stw r30, 8(r1)
/* 8049A5F0  7C 7E 1B 78 */	mr r30, r3
/* 8049A5F4  4B FF FF 41 */	bl aSOG_gyoei_make_sea_range_data
/* 8049A5F8  7F C3 F3 78 */	mr r3, r30
/* 8049A5FC  4B FF FF AD */	bl aSOG_gyoei_make_offing_range_data_sub
/* 8049A600  2C 1F 00 00 */	cmpwi r31, 0
/* 8049A604  40 82 00 34 */	bne lbl_8049A638
/* 8049A608  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 8049A60C  3C 60 80 69 */	lis r3, whale_data@ha /* 0x8068CCC8@ha */
/* 8049A610  38 83 CC C8 */	addi r4, r3, whale_data@l /* 0x8068CCC8@l */
/* 8049A614  54 05 18 38 */	slwi r5, r0, 3
/* 8049A618  80 64 00 00 */	lwz r3, 0(r4)
/* 8049A61C  80 04 00 04 */	lwz r0, 4(r4)
/* 8049A620  7C 9E 2A 14 */	add r4, r30, r5
/* 8049A624  90 64 00 00 */	stw r3, 0(r4)
/* 8049A628  90 04 00 04 */	stw r0, 4(r4)
/* 8049A62C  80 7E 01 40 */	lwz r3, 0x140(r30)
/* 8049A630  38 03 00 01 */	addi r0, r3, 1
/* 8049A634  90 1E 01 40 */	stw r0, 0x140(r30)
lbl_8049A638:
/* 8049A638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049A63C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049A640  83 C1 00 08 */	lwz r30, 8(r1)
/* 8049A644  7C 08 03 A6 */	mtlr r0
/* 8049A648  38 21 00 10 */	addi r1, r1, 0x10
/* 8049A64C  4E 80 00 20 */	blr 
