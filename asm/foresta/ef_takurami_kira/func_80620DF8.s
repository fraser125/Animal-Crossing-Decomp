lbl_80620DF8:
/* 80620DF8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80620DFC  7C 08 02 A6 */	mflr r0
/* 80620E00  90 01 00 44 */	stw r0, 0x44(r1)
/* 80620E04  39 61 00 40 */	addi r11, r1, 0x40
/* 80620E08  4B A7 A0 C5 */	bl func_8009AECC
/* 80620E0C  7C DE 33 78 */	mr r30, r6
/* 80620E10  7C 7C 1B 78 */	mr r28, r3
/* 80620E14  7C 9D 23 78 */	mr r29, r4
/* 80620E18  7C BB 2B 78 */	mr r27, r5
/* 80620E1C  7C FF 3B 78 */	mr r31, r7
/* 80620E20  7F C3 F3 78 */	mr r3, r30
/* 80620E24  4B D5 DC 8D */	bl getCamera2AngleY
/* 80620E28  7C 63 07 34 */	extsh r3, r3
/* 80620E2C  3C 63 00 01 */	addis r3, r3, 1
/* 80620E30  38 03 80 00 */	addi r0, r3, -32768
/* 80620E34  7C 00 07 34 */	extsh r0, r0
/* 80620E38  7C 00 D8 50 */	subf r0, r0, r27
/* 80620E3C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80620E40  28 00 2A AA */	cmplwi r0, 0x2aaa
/* 80620E44  41 81 00 2C */	bgt lbl_80620E70
/* 80620E48  3C A0 80 65 */	lis r5, data_8064CD54@ha /* 0x8064CD54@ha */
/* 80620E4C  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064CD58@ha */
/* 80620E50  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CD5C@ha */
/* 80620E54  C0 45 CD 54 */	lfs f2, data_8064CD54@l(r5)  /* 0x8064CD54@l */
/* 80620E58  C0 24 CD 58 */	lfs f1, lit_393@l(r4)  /* 0x8064CD58@l */
/* 80620E5C  C0 03 CD 5C */	lfs f0, lit_394@l(r3)  /* 0x8064CD5C@l */
/* 80620E60  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80620E64  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80620E68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80620E6C  48 00 00 E8 */	b lbl_80620F54
lbl_80620E70:
/* 80620E70  28 00 55 56 */	cmplwi r0, 0x5556
/* 80620E74  41 81 00 2C */	bgt lbl_80620EA0
/* 80620E78  3C A0 80 65 */	lis r5, lit_395@ha /* 0x8064CD60@ha */
/* 80620E7C  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064CD58@ha */
/* 80620E80  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CD5C@ha */
/* 80620E84  C0 45 CD 60 */	lfs f2, lit_395@l(r5)  /* 0x8064CD60@l */
/* 80620E88  C0 24 CD 58 */	lfs f1, lit_393@l(r4)  /* 0x8064CD58@l */
/* 80620E8C  C0 03 CD 5C */	lfs f0, lit_394@l(r3)  /* 0x8064CD5C@l */
/* 80620E90  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80620E94  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80620E98  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80620E9C  48 00 00 B8 */	b lbl_80620F54
lbl_80620EA0:
/* 80620EA0  28 00 80 00 */	cmplwi r0, 0x8000
/* 80620EA4  41 81 00 2C */	bgt lbl_80620ED0
/* 80620EA8  3C A0 80 65 */	lis r5, lit_395@ha /* 0x8064CD60@ha */
/* 80620EAC  3C 80 80 65 */	lis r4, lit_396@ha /* 0x8064CD64@ha */
/* 80620EB0  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064CD68@ha */
/* 80620EB4  C0 45 CD 60 */	lfs f2, lit_395@l(r5)  /* 0x8064CD60@l */
/* 80620EB8  C0 24 CD 64 */	lfs f1, lit_396@l(r4)  /* 0x8064CD64@l */
/* 80620EBC  C0 03 CD 68 */	lfs f0, lit_397@l(r3)  /* 0x8064CD68@l */
/* 80620EC0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80620EC4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80620EC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80620ECC  48 00 00 88 */	b lbl_80620F54
lbl_80620ED0:
/* 80620ED0  28 00 AA AA */	cmplwi r0, 0xaaaa
/* 80620ED4  41 81 00 2C */	bgt lbl_80620F00
/* 80620ED8  3C A0 80 65 */	lis r5, lit_398@ha /* 0x8064CD6C@ha */
/* 80620EDC  3C 80 80 65 */	lis r4, lit_396@ha /* 0x8064CD64@ha */
/* 80620EE0  3C 60 80 65 */	lis r3, lit_397@ha /* 0x8064CD68@ha */
/* 80620EE4  C0 45 CD 6C */	lfs f2, lit_398@l(r5)  /* 0x8064CD6C@l */
/* 80620EE8  C0 24 CD 64 */	lfs f1, lit_396@l(r4)  /* 0x8064CD64@l */
/* 80620EEC  C0 03 CD 68 */	lfs f0, lit_397@l(r3)  /* 0x8064CD68@l */
/* 80620EF0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80620EF4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80620EF8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80620EFC  48 00 00 58 */	b lbl_80620F54
lbl_80620F00:
/* 80620F00  28 00 D5 56 */	cmplwi r0, 0xd556
/* 80620F04  41 81 00 2C */	bgt lbl_80620F30
/* 80620F08  3C A0 80 65 */	lis r5, lit_398@ha /* 0x8064CD6C@ha */
/* 80620F0C  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064CD58@ha */
/* 80620F10  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CD5C@ha */
/* 80620F14  C0 45 CD 6C */	lfs f2, lit_398@l(r5)  /* 0x8064CD6C@l */
/* 80620F18  C0 24 CD 58 */	lfs f1, lit_393@l(r4)  /* 0x8064CD58@l */
/* 80620F1C  C0 03 CD 5C */	lfs f0, lit_394@l(r3)  /* 0x8064CD5C@l */
/* 80620F20  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80620F24  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80620F28  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80620F2C  48 00 00 28 */	b lbl_80620F54
lbl_80620F30:
/* 80620F30  3C A0 80 65 */	lis r5, lit_399@ha /* 0x8064CD70@ha */
/* 80620F34  3C 80 80 65 */	lis r4, lit_393@ha /* 0x8064CD58@ha */
/* 80620F38  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064CD5C@ha */
/* 80620F3C  C0 45 CD 70 */	lfs f2, lit_399@l(r5)  /* 0x8064CD70@l */
/* 80620F40  C0 24 CD 58 */	lfs f1, lit_393@l(r4)  /* 0x8064CD58@l */
/* 80620F44  C0 03 CD 5C */	lfs f0, lit_394@l(r3)  /* 0x8064CD5C@l */
/* 80620F48  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80620F4C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80620F50  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80620F54:
/* 80620F54  80 BC 00 00 */	lwz r5, 0(r28)
/* 80620F58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80620F5C  80 9C 00 04 */	lwz r4, 4(r28)
/* 80620F60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80620F64  80 FC 00 08 */	lwz r7, 8(r28)
/* 80620F68  38 00 00 00 */	li r0, 0
/* 80620F6C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80620F70  3D 63 00 02 */	addis r11, r3, 2
/* 80620F74  7F C6 F3 78 */	mr r6, r30
/* 80620F78  7F E8 FB 78 */	mr r8, r31
/* 80620F7C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80620F80  7F A9 EB 78 */	mr r9, r29
/* 80620F84  38 81 00 10 */	addi r4, r1, 0x10
/* 80620F88  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80620F8C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80620F90  38 60 00 11 */	li r3, 0x11
/* 80620F94  38 E0 00 00 */	li r7, 0
/* 80620F98  39 40 00 00 */	li r10, 0
/* 80620F9C  90 01 00 08 */	stw r0, 8(r1)
/* 80620FA0  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 80620FA4  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 80620FA8  7D 89 03 A6 */	mtctr r12
/* 80620FAC  4E 80 04 21 */	bctrl 
/* 80620FB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80620FB4  4B A7 9F 65 */	bl func_8009AF18
/* 80620FB8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80620FBC  7C 08 03 A6 */	mtlr r0
/* 80620FC0  38 21 00 40 */	addi r1, r1, 0x40
/* 80620FC4  4E 80 00 20 */	blr 
