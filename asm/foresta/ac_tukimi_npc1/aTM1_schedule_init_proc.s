lbl_8058E190:
/* 8058E190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E194  7C 08 02 A6 */	mflr r0
/* 8058E198  3C A0 80 59 */	lis r5, aTM1_think_proc@ha /* 0x8058E15C@ha */
/* 8058E19C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E1A0  38 05 E1 5C */	addi r0, r5, aTM1_think_proc@l /* 0x8058E15C@l */
/* 8058E1A4  38 A0 01 37 */	li r5, 0x137
/* 8058E1A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E1AC  7C 9F 23 78 */	mr r31, r4
/* 8058E1B0  93 C1 00 08 */	stw r30, 8(r1)
/* 8058E1B4  7C 7E 1B 78 */	mr r30, r3
/* 8058E1B8  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 8058E1BC  38 60 00 00 */	li r3, 0
/* 8058E1C0  38 00 FF FF */	li r0, -1
/* 8058E1C4  90 BE 08 40 */	stw r5, 0x840(r30)
/* 8058E1C8  98 7E 09 59 */	stb r3, 0x959(r30)
/* 8058E1CC  98 7E 08 31 */	stb r3, 0x831(r30)
/* 8058E1D0  90 1E 08 F4 */	stw r0, 0x8f4(r30)
/* 8058E1D4  A0 1E 00 06 */	lhz r0, 6(r30)
/* 8058E1D8  28 00 D0 43 */	cmplwi r0, 0xd043
/* 8058E1DC  40 82 00 18 */	bne lbl_8058E1F4
/* 8058E1E0  38 60 00 02 */	li r3, 2
/* 8058E1E4  38 00 00 4C */	li r0, 0x4c
/* 8058E1E8  98 7E 09 73 */	stb r3, 0x973(r30)
/* 8058E1EC  B0 1E 09 74 */	sth r0, 0x974(r30)
/* 8058E1F0  48 00 00 14 */	b lbl_8058E204
lbl_8058E1F4:
/* 8058E1F4  38 60 00 01 */	li r3, 1
/* 8058E1F8  38 00 00 48 */	li r0, 0x48
/* 8058E1FC  98 7E 09 73 */	stb r3, 0x973(r30)
/* 8058E200  B0 1E 09 74 */	sth r0, 0x974(r30)
lbl_8058E204:
/* 8058E204  38 00 00 FE */	li r0, 0xfe
/* 8058E208  98 1E 00 D6 */	stb r0, 0xd6(r30)
/* 8058E20C  4B E1 80 9D */	bl mFI_GetPuleIdx
/* 8058E210  A0 BE 00 06 */	lhz r5, 6(r30)
/* 8058E214  3C 80 80 6C */	lis r4, def_angle@ha /* 0x806C24FC@ha */
/* 8058E218  54 60 08 3C */	slwi r0, r3, 1
/* 8058E21C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058E220  3D 05 FF FF */	addis r8, r5, 0xffff
/* 8058E224  38 A4 24 FC */	addi r5, r4, def_angle@l /* 0x806C24FC@l */
/* 8058E228  39 08 2F C1 */	addi r8, r8, 0x2fc1
/* 8058E22C  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8058E230  1C C8 00 0E */	mulli r6, r8, 0xe
/* 8058E234  7F C3 F3 78 */	mr r3, r30
/* 8058E238  3C E4 00 02 */	addis r7, r4, 2
/* 8058E23C  7F E4 FB 78 */	mr r4, r31
/* 8058E240  7C C5 32 14 */	add r6, r5, r6
/* 8058E244  38 A0 00 09 */	li r5, 9
/* 8058E248  7C 06 02 AE */	lhax r0, r6, r0
/* 8058E24C  38 C0 00 00 */	li r6, 0
/* 8058E250  B0 1E 00 DE */	sth r0, 0xde(r30)
/* 8058E254  B0 1E 00 36 */	sth r0, 0x36(r30)
/* 8058E258  B0 1E 09 24 */	sth r0, 0x924(r30)
/* 8058E25C  91 1E 09 94 */	stw r8, 0x994(r30)
/* 8058E260  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 8058E264  81 87 01 20 */	lwz r12, 0x120(r7)
/* 8058E268  7D 89 03 A6 */	mtctr r12
/* 8058E26C  4E 80 04 21 */	bctrl 
/* 8058E270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E278  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058E27C  7C 08 03 A6 */	mtlr r0
/* 8058E280  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E284  4E 80 00 20 */	blr 
