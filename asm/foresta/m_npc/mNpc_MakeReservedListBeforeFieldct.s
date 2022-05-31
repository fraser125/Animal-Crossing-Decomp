lbl_803CF400:
/* 803CF400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CF404  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803CF408  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803CF40C  39 60 00 00 */	li r11, 0
/* 803CF410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CF414  3D 26 00 01 */	addis r9, r6, 1
/* 803CF418  7C 67 1B 78 */	mr r7, r3
/* 803CF41C  39 00 00 00 */	li r8, 0
/* 803CF420  93 C1 00 08 */	stw r30, 8(r1)
/* 803CF424  38 C0 00 FF */	li r6, 0xff
/* 803CF428  39 29 37 A8 */	addi r9, r9, 0x37a8
/* 803CF42C  48 00 00 1C */	b lbl_803CF448
lbl_803CF430:
/* 803CF430  98 C3 00 01 */	stb r6, 1(r3)
/* 803CF434  39 08 00 01 */	addi r8, r8, 1
/* 803CF438  98 C3 00 02 */	stb r6, 2(r3)
/* 803CF43C  98 C3 00 03 */	stb r6, 3(r3)
/* 803CF440  98 C3 00 04 */	stb r6, 4(r3)
/* 803CF444  38 63 00 05 */	addi r3, r3, 5
lbl_803CF448:
/* 803CF448  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 803CF44C  7C 00 20 00 */	cmpw r0, r4
/* 803CF450  41 80 FF E0 */	blt lbl_803CF430
/* 803CF454  7C E3 3B 78 */	mr r3, r7
/* 803CF458  39 00 00 00 */	li r8, 0
/* 803CF45C  48 00 00 AC */	b lbl_803CF508
lbl_803CF460:
/* 803CF460  55 06 06 3E */	clrlwi r6, r8, 0x18
/* 803CF464  39 80 00 00 */	li r12, 0
/* 803CF468  38 E6 00 01 */	addi r7, r6, 1
/* 803CF46C  48 00 00 8C */	b lbl_803CF4F8
lbl_803CF470:
/* 803CF470  55 86 06 3E */	clrlwi r6, r12, 0x18
/* 803CF474  7D 2A 4B 78 */	mr r10, r9
/* 803CF478  38 C6 00 01 */	addi r6, r6, 1
/* 803CF47C  3B E0 00 00 */	li r31, 0
/* 803CF480  48 00 00 64 */	b lbl_803CF4E4
lbl_803CF484:
/* 803CF484  3B C0 00 00 */	li r30, 0
/* 803CF488  48 00 00 4C */	b lbl_803CF4D4
lbl_803CF48C:
/* 803CF48C  A0 0A 00 00 */	lhz r0, 0(r10)
/* 803CF490  28 00 58 10 */	cmplwi r0, 0x5810
/* 803CF494  41 80 00 38 */	blt lbl_803CF4CC
/* 803CF498  28 00 58 24 */	cmplwi r0, 0x5824
/* 803CF49C  41 81 00 30 */	bgt lbl_803CF4CC
/* 803CF4A0  98 C3 00 01 */	stb r6, 1(r3)
/* 803CF4A4  39 6B 00 01 */	addi r11, r11, 1
/* 803CF4A8  55 60 06 3E */	clrlwi r0, r11, 0x18
/* 803CF4AC  98 E3 00 02 */	stb r7, 2(r3)
/* 803CF4B0  7C 00 20 00 */	cmpw r0, r4
/* 803CF4B4  9B C3 00 03 */	stb r30, 3(r3)
/* 803CF4B8  9B E3 00 04 */	stb r31, 4(r3)
/* 803CF4BC  38 63 00 05 */	addi r3, r3, 5
/* 803CF4C0  41 80 00 0C */	blt lbl_803CF4CC
/* 803CF4C4  99 65 00 00 */	stb r11, 0(r5)
/* 803CF4C8  48 00 00 50 */	b lbl_803CF518
lbl_803CF4CC:
/* 803CF4CC  39 4A 00 02 */	addi r10, r10, 2
/* 803CF4D0  3B DE 00 01 */	addi r30, r30, 1
lbl_803CF4D4:
/* 803CF4D4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 803CF4D8  28 00 00 10 */	cmplwi r0, 0x10
/* 803CF4DC  41 80 FF B0 */	blt lbl_803CF48C
/* 803CF4E0  3B FF 00 01 */	addi r31, r31, 1
lbl_803CF4E4:
/* 803CF4E4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 803CF4E8  28 00 00 10 */	cmplwi r0, 0x10
/* 803CF4EC  41 80 FF 98 */	blt lbl_803CF484
/* 803CF4F0  39 29 02 00 */	addi r9, r9, 0x200
/* 803CF4F4  39 8C 00 01 */	addi r12, r12, 1
lbl_803CF4F8:
/* 803CF4F8  55 80 06 3E */	clrlwi r0, r12, 0x18
/* 803CF4FC  28 00 00 05 */	cmplwi r0, 5
/* 803CF500  41 80 FF 70 */	blt lbl_803CF470
/* 803CF504  39 08 00 01 */	addi r8, r8, 1
lbl_803CF508:
/* 803CF508  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 803CF50C  28 00 00 06 */	cmplwi r0, 6
/* 803CF510  41 80 FF 50 */	blt lbl_803CF460
/* 803CF514  99 65 00 00 */	stb r11, 0(r5)
lbl_803CF518:
/* 803CF518  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CF51C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CF520  38 21 00 10 */	addi r1, r1, 0x10
/* 803CF524  4E 80 00 20 */	blr 
