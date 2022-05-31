lbl_804F1838:
/* 804F1838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F183C  7C 08 02 A6 */	mflr r0
/* 804F1840  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1844  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F1848  93 C1 00 08 */	stw r30, 8(r1)
/* 804F184C  7C 7E 1B 78 */	mr r30, r3
/* 804F1850  3B FE 0D 44 */	addi r31, r30, 0xd44
/* 804F1854  80 03 0D 44 */	lwz r0, 0xd44(r3)
/* 804F1858  2C 00 00 01 */	cmpwi r0, 1
/* 804F185C  41 82 00 58 */	beq lbl_804F18B4
/* 804F1860  40 80 00 10 */	bge lbl_804F1870
/* 804F1864  2C 00 00 00 */	cmpwi r0, 0
/* 804F1868  40 80 00 14 */	bge lbl_804F187C
/* 804F186C  48 00 00 A0 */	b lbl_804F190C
lbl_804F1870:
/* 804F1870  2C 00 00 03 */	cmpwi r0, 3
/* 804F1874  40 80 00 98 */	bge lbl_804F190C
/* 804F1878  48 00 00 74 */	b lbl_804F18EC
lbl_804F187C:
/* 804F187C  3C 60 80 65 */	lis r3, lit_10660@ha /* 0x806484F8@ha */
/* 804F1880  C0 3E 0D 40 */	lfs f1, 0xd40(r30)
/* 804F1884  C0 03 84 F8 */	lfs f0, lit_10660@l(r3)  /* 0x806484F8@l */
/* 804F1888  38 9E 0D 40 */	addi r4, r30, 0xd40
/* 804F188C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804F1890  40 80 00 18 */	bge lbl_804F18A8
/* 804F1894  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F1898  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804F189C  EC 01 00 2A */	fadds f0, f1, f0
/* 804F18A0  D0 04 00 00 */	stfs f0, 0(r4)
/* 804F18A4  48 00 00 70 */	b lbl_804F1914
lbl_804F18A8:
/* 804F18A8  38 00 00 01 */	li r0, 1
/* 804F18AC  90 1F 00 00 */	stw r0, 0(r31)
/* 804F18B0  48 00 00 64 */	b lbl_804F1914
lbl_804F18B4:
/* 804F18B4  7F C4 F3 78 */	mr r4, r30
/* 804F18B8  38 60 00 09 */	li r3, 9
/* 804F18BC  4B EA 89 A9 */	bl mDemo_Check
/* 804F18C0  2C 03 00 00 */	cmpwi r3, 0
/* 804F18C4  40 82 00 1C */	bne lbl_804F18E0
/* 804F18C8  3C 60 80 4F */	lis r3, Player_actor_Broken_axe_demo_ct@ha /* 0x804F17D0@ha */
/* 804F18CC  7F C4 F3 78 */	mr r4, r30
/* 804F18D0  38 A3 17 D0 */	addi r5, r3, Player_actor_Broken_axe_demo_ct@l /* 0x804F17D0@l */
/* 804F18D4  38 60 00 09 */	li r3, 9
/* 804F18D8  4B EA 88 85 */	bl mDemo_Request
/* 804F18DC  48 00 00 38 */	b lbl_804F1914
lbl_804F18E0:
/* 804F18E0  38 00 00 02 */	li r0, 2
/* 804F18E4  90 1F 00 00 */	stw r0, 0(r31)
/* 804F18E8  48 00 00 2C */	b lbl_804F1914
lbl_804F18EC:
/* 804F18EC  7F C4 F3 78 */	mr r4, r30
/* 804F18F0  38 60 00 09 */	li r3, 9
/* 804F18F4  4B EA 89 71 */	bl mDemo_Check
/* 804F18F8  2C 03 00 00 */	cmpwi r3, 0
/* 804F18FC  40 82 00 18 */	bne lbl_804F1914
/* 804F1900  38 00 00 03 */	li r0, 3
/* 804F1904  90 1F 00 00 */	stw r0, 0(r31)
/* 804F1908  48 00 00 0C */	b lbl_804F1914
lbl_804F190C:
/* 804F190C  38 60 00 01 */	li r3, 1
/* 804F1910  48 00 00 08 */	b lbl_804F1918
lbl_804F1914:
/* 804F1914  38 60 00 00 */	li r3, 0
lbl_804F1918:
/* 804F1918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F191C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F1920  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F1924  7C 08 03 A6 */	mtlr r0
/* 804F1928  38 21 00 10 */	addi r1, r1, 0x10
/* 804F192C  4E 80 00 20 */	blr 
