lbl_80627204:
/* 80627204  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80627208  7C 08 02 A6 */	mflr r0
/* 8062720C  3D 40 81 14 */	lis r10, common_data@ha /* 0x81138538@ha */
/* 80627210  90 01 00 34 */	stw r0, 0x34(r1)
/* 80627214  39 6A 85 38 */	addi r11, r10, common_data@l /* 0x81138538@l */
/* 80627218  7D 0A 43 78 */	mr r10, r8
/* 8062721C  7C E8 3B 78 */	mr r8, r7
/* 80627220  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80627224  3D 6B 00 02 */	addis r11, r11, 2
/* 80627228  38 E1 00 10 */	addi r7, r1, 0x10
/* 8062722C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80627230  7C 9E 23 78 */	mr r30, r4
/* 80627234  38 81 00 14 */	addi r4, r1, 0x14
/* 80627238  83 E3 00 00 */	lwz r31, 0(r3)
/* 8062723C  81 83 00 04 */	lwz r12, 4(r3)
/* 80627240  80 03 00 08 */	lwz r0, 8(r3)
/* 80627244  38 60 00 3C */	li r3, 0x3c
/* 80627248  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8062724C  38 A0 00 00 */	li r5, 0
/* 80627250  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80627254  91 81 00 18 */	stw r12, 0x18(r1)
/* 80627258  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8062725C  91 21 00 08 */	stw r9, 8(r1)
/* 80627260  7F C9 F3 78 */	mr r9, r30
/* 80627264  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80627268  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8062726C  7D 89 03 A6 */	mtctr r12
/* 80627270  4E 80 04 21 */	bctrl 
/* 80627274  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80627278  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062727C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80627280  7C 08 03 A6 */	mtlr r0
/* 80627284  38 21 00 30 */	addi r1, r1, 0x30
/* 80627288  4E 80 00 20 */	blr 