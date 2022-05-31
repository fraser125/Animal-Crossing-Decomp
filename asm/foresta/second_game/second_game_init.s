lbl_8062B644:
/* 8062B644  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062B648  7C 08 02 A6 */	mflr r0
/* 8062B64C  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8062B650  3C A0 81 36 */	lis r5, struct_8135FB98+0x0@ha /* 0x8135FB98@ha */
/* 8062B654  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062B658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062B65C  3B E5 FB 98 */	addi r31, r5, struct_8135FB98+0x0@l /* 0x8135FB98@l */
/* 8062B660  93 C1 00 08 */	stw r30, 8(r1)
/* 8062B664  7C 7E 1B 78 */	mr r30, r3
/* 8062B668  80 04 B7 A8 */	lwz r0, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 8062B66C  2C 00 00 00 */	cmpwi r0, 0
/* 8062B670  41 82 00 60 */	beq lbl_8062B6D0
/* 8062B674  3C 60 80 22 */	lis r3, osShutdown@ha /* 0x80218654@ha */
/* 8062B678  80 03 86 54 */	lwz r0, osShutdown@l(r3)  /* 0x80218654@l */
/* 8062B67C  2C 00 00 03 */	cmpwi r0, 3
/* 8062B680  41 80 00 50 */	blt lbl_8062B6D0
/* 8062B684  38 60 00 01 */	li r3, 1
/* 8062B688  4B A5 E2 39 */	bl VISetBlack
/* 8062B68C  4B A5 E0 AD */	bl VIFlush
/* 8062B690  4B A5 D0 B1 */	bl VIWaitForRetrace
/* 8062B694  3C 60 80 22 */	lis r3, osShutdown@ha /* 0x80218654@ha */
/* 8062B698  80 03 86 54 */	lwz r0, osShutdown@l(r3)  /* 0x80218654@l */
/* 8062B69C  2C 00 00 04 */	cmpwi r0, 4
/* 8062B6A0  41 82 00 20 */	beq lbl_8062B6C0
/* 8062B6A4  40 80 00 24 */	bge lbl_8062B6C8
/* 8062B6A8  2C 00 00 03 */	cmpwi r0, 3
/* 8062B6AC  40 80 00 08 */	bge lbl_8062B6B4
/* 8062B6B0  48 00 00 18 */	b lbl_8062B6C8
lbl_8062B6B4:
/* 8062B6B4  38 60 00 02 */	li r3, 2
/* 8062B6B8  4B A3 4C 95 */	bl osShutdownStart
/* 8062B6BC  48 00 00 14 */	b lbl_8062B6D0
lbl_8062B6C0:
/* 8062B6C0  4B 9D A4 ED */	bl HotResetIplMenu
/* 8062B6C4  48 00 00 0C */	b lbl_8062B6D0
lbl_8062B6C8:
/* 8062B6C8  38 60 00 00 */	li r3, 0
/* 8062B6CC  4B A3 4C 81 */	bl osShutdownStart
lbl_8062B6D0:
/* 8062B6D0  3C 60 80 22 */	lis r3, osShutdown@ha /* 0x80218654@ha */
/* 8062B6D4  80 03 86 54 */	lwz r0, osShutdown@l(r3)  /* 0x80218654@l */
/* 8062B6D8  2C 00 00 00 */	cmpwi r0, 0
/* 8062B6DC  41 82 00 38 */	beq lbl_8062B714
/* 8062B6E0  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 8062B6E4  38 63 6F 60 */	addi r3, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 8062B6E8  80 03 00 3C */	lwz r0, 0x3c(r3)
/* 8062B6EC  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8062B6F0  41 82 00 10 */	beq lbl_8062B700
/* 8062B6F4  38 60 00 02 */	li r3, 2
/* 8062B6F8  4B A3 4C 55 */	bl osShutdownStart
/* 8062B6FC  48 00 00 18 */	b lbl_8062B714
lbl_8062B700:
/* 8062B700  4B A5 BE C1 */	bl DVDCheckDisk
/* 8062B704  2C 03 00 00 */	cmpwi r3, 0
/* 8062B708  40 82 00 0C */	bne lbl_8062B714
/* 8062B70C  38 60 00 00 */	li r3, 0
/* 8062B710  4B A3 4C 3D */	bl osShutdownStart
lbl_8062B714:
/* 8062B714  38 A0 00 00 */	li r5, 0
/* 8062B718  38 00 00 01 */	li r0, 1
/* 8062B71C  3C 60 80 63 */	lis r3, func_8062B548@ha /* 0x8062B548@ha */
/* 8062B720  98 BF 00 00 */	stb r5, 0(r31)
/* 8062B724  38 83 B5 48 */	addi r4, r3, func_8062B548@l /* 0x8062B548@l */
/* 8062B728  3C 60 80 63 */	lis r3, second_game_cleanup@ha /* 0x8062B628@ha */
/* 8062B72C  98 1F 00 01 */	stb r0, 1(r31)
/* 8062B730  38 03 B6 28 */	addi r0, r3, second_game_cleanup@l /* 0x8062B628@l */
/* 8062B734  98 BF 00 02 */	stb r5, 2(r31)
/* 8062B738  90 9E 00 04 */	stw r4, 4(r30)
/* 8062B73C  90 1E 00 08 */	stw r0, 8(r30)
/* 8062B740  4B DD D1 19 */	bl func_80408858
/* 8062B744  4B A3 49 4D */	bl func_80060090
/* 8062B748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062B74C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062B750  83 C1 00 08 */	lwz r30, 8(r1)
/* 8062B754  7C 08 03 A6 */	mtlr r0
/* 8062B758  38 21 00 10 */	addi r1, r1, 0x10
/* 8062B75C  4E 80 00 20 */	blr 
