lbl_80529E08:
/* 80529E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529E0C  7C 08 02 A6 */	mflr r0
/* 80529E10  3C C0 80 6A */	lis r6, def_angle@ha /* 0x806A11FC@ha */
/* 80529E14  3C A0 80 53 */	lis r5, aHM0_think_proc@ha /* 0x80529DD4@ha */
/* 80529E18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529E1C  38 05 9D D4 */	addi r0, r5, aHM0_think_proc@l /* 0x80529DD4@l */
/* 80529E20  39 06 11 FC */	addi r8, r6, def_angle@l /* 0x806A11FC@l */
/* 80529E24  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80529E28  A0 E3 00 06 */	lhz r7, 6(r3)
/* 80529E2C  39 60 00 01 */	li r11, 1
/* 80529E30  39 40 01 37 */	li r10, 0x137
/* 80529E34  39 20 00 FE */	li r9, 0xfe
/* 80529E38  90 03 07 D4 */	stw r0, 0x7d4(r3)
/* 80529E3C  3D 87 FF FF */	addis r12, r7, 0xffff
/* 80529E40  38 00 00 00 */	li r0, 0
/* 80529E44  38 E0 00 48 */	li r7, 0x48
/* 80529E48  98 03 08 31 */	stb r0, 0x831(r3)
/* 80529E4C  38 00 FF FF */	li r0, -1
/* 80529E50  39 8C 2F CE */	addi r12, r12, 0x2fce
/* 80529E54  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80529E58  90 03 08 F4 */	stw r0, 0x8f4(r3)
/* 80529E5C  55 80 08 3C */	slwi r0, r12, 1
/* 80529E60  38 C0 00 00 */	li r6, 0
/* 80529E64  99 63 09 73 */	stb r11, 0x973(r3)
/* 80529E68  B0 E3 09 74 */	sth r7, 0x974(r3)
/* 80529E6C  3C E5 00 02 */	addis r7, r5, 2
/* 80529E70  38 A0 00 09 */	li r5, 9
/* 80529E74  91 83 09 9C */	stw r12, 0x99c(r3)
/* 80529E78  91 43 08 40 */	stw r10, 0x840(r3)
/* 80529E7C  99 63 09 59 */	stb r11, 0x959(r3)
/* 80529E80  99 23 00 D6 */	stb r9, 0xd6(r3)
/* 80529E84  7C 08 02 AE */	lhax r0, r8, r0
/* 80529E88  B0 03 00 DE */	sth r0, 0xde(r3)
/* 80529E8C  B0 03 00 36 */	sth r0, 0x36(r3)
/* 80529E90  B0 03 09 24 */	sth r0, 0x924(r3)
/* 80529E94  80 E7 60 4C */	lwz r7, 0x604c(r7)
/* 80529E98  81 87 01 20 */	lwz r12, 0x120(r7)
/* 80529E9C  7D 89 03 A6 */	mtctr r12
/* 80529EA0  4E 80 04 21 */	bctrl 
/* 80529EA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529EA8  7C 08 03 A6 */	mtlr r0
/* 80529EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80529EB0  4E 80 00 20 */	blr 
