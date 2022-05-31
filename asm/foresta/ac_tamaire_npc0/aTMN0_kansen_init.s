lbl_80589E34:
/* 80589E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589E38  7C 08 02 A6 */	mflr r0
/* 80589E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589E40  38 00 00 00 */	li r0, 0
/* 80589E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80589E48  7C 7F 1B 78 */	mr r31, r3
/* 80589E4C  98 03 07 F5 */	stb r0, 0x7f5(r3)
/* 80589E50  4B FF FF 21 */	bl aTMN0_normal_wait_init
/* 80589E54  38 00 00 01 */	li r0, 1
/* 80589E58  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 80589E5C  4B AD 2E 99 */	bl fqrand
/* 80589E60  3C 60 80 65 */	lis r3, lit_612@ha /* 0x80649B4C@ha */
/* 80589E64  C0 03 9B 4C */	lfs f0, lit_612@l(r3)  /* 0x80649B4C@l */
/* 80589E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80589E6C  40 80 00 30 */	bge lbl_80589E9C
/* 80589E70  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80589E74  7F E3 FB 78 */	mr r3, r31
/* 80589E78  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80589E7C  38 80 00 43 */	li r4, 0x43
/* 80589E80  3C C5 00 02 */	addis r6, r5, 2
/* 80589E84  38 A0 00 00 */	li r5, 0
/* 80589E88  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80589E8C  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80589E90  7D 89 03 A6 */	mtctr r12
/* 80589E94  4E 80 04 21 */	bctrl 
/* 80589E98  48 00 00 2C */	b lbl_80589EC4
lbl_80589E9C:
/* 80589E9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80589EA0  7F E3 FB 78 */	mr r3, r31
/* 80589EA4  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80589EA8  38 80 00 42 */	li r4, 0x42
/* 80589EAC  3C C5 00 02 */	addis r6, r5, 2
/* 80589EB0  38 A0 00 00 */	li r5, 0
/* 80589EB4  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80589EB8  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80589EBC  7D 89 03 A6 */	mtctr r12
/* 80589EC0  4E 80 04 21 */	bctrl 
lbl_80589EC4:
/* 80589EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80589ECC  7C 08 03 A6 */	mtlr r0
/* 80589ED0  38 21 00 10 */	addi r1, r1, 0x10
/* 80589ED4  4E 80 00 20 */	blr 
