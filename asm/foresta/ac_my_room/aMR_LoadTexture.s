lbl_80481DE8:
/* 80481DE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80481DEC  7C 08 02 A6 */	mflr r0
/* 80481DF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80481DF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80481DF8  4B C1 90 D1 */	bl func_8009AEC8
/* 80481DFC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80481E00  28 00 00 00 */	cmplwi r0, 0
/* 80481E04  41 82 02 24 */	beq lbl_80482028
/* 80481E08  80 03 00 00 */	lwz r0, 0(r3)
/* 80481E0C  28 00 00 00 */	cmplwi r0, 0
/* 80481E10  40 82 00 1C */	bne lbl_80481E2C
/* 80481E14  80 03 00 04 */	lwz r0, 4(r3)
/* 80481E18  28 00 00 00 */	cmplwi r0, 0
/* 80481E1C  40 82 00 10 */	bne lbl_80481E2C
/* 80481E20  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80481E24  28 00 00 00 */	cmplwi r0, 0
/* 80481E28  41 82 00 F0 */	beq lbl_80481F18
lbl_80481E2C:
/* 80481E2C  80 C4 00 00 */	lwz r6, 0(r4)
/* 80481E30  3D 60 07 06 */	lis r11, 0x0706 /* 0x0705C170@ha */
/* 80481E34  3D 40 07 80 */	lis r10, 0x0780 /* 0x077FF000@ha */
/* 80481E38  3D 20 F5 88 */	lis r9, 0xF588 /* 0xF5881000@ha */
/* 80481E3C  83 46 02 D0 */	lwz r26, 0x2d0(r6)
/* 80481E40  3D 00 00 06 */	lis r8, 0x0006 /* 0x0005C170@ha */
/* 80481E44  3C E0 00 10 */	lis r7, 0x0010 /* 0x000FC0FC@ha */
/* 80481E48  3C A0 E7 00 */	lis r5, 0xe700
/* 80481E4C  39 9A 00 08 */	addi r12, r26, 8
/* 80481E50  38 00 00 00 */	li r0, 0
/* 80481E54  91 86 02 D0 */	stw r12, 0x2d0(r6)
/* 80481E58  3F C0 FD 90 */	lis r30, 0xfd90
/* 80481E5C  3F A0 F5 90 */	lis r29, 0xf590
/* 80481E60  3B 8B C1 70 */	addi r28, r11, 0xC170 /* 0x0705C170@l */
/* 80481E64  90 BA 00 00 */	stw r5, 0(r26)
/* 80481E68  3F 60 E6 00 */	lis r27, 0xe600
/* 80481E6C  3D 80 F3 00 */	lis r12, 0xf300
/* 80481E70  39 6A F0 00 */	addi r11, r10, 0xF000 /* 0x077FF000@l */
/* 80481E74  90 1A 00 04 */	stw r0, 4(r26)
/* 80481E78  39 49 10 00 */	addi r10, r9, 0x1000 /* 0xF5881000@l */
/* 80481E7C  39 28 C1 70 */	addi r9, r8, 0xC170 /* 0x0005C170@l */
/* 80481E80  3D 00 F2 00 */	lis r8, 0xf200
/* 80481E84  83 46 02 D0 */	lwz r26, 0x2d0(r6)
/* 80481E88  38 E7 C0 FC */	addi r7, r7, 0xC0FC /* 0x000FC0FC@l */
/* 80481E8C  3B FA 00 08 */	addi r31, r26, 8
/* 80481E90  93 E6 02 D0 */	stw r31, 0x2d0(r6)
/* 80481E94  93 DA 00 00 */	stw r30, 0(r26)
/* 80481E98  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 80481E9C  93 DA 00 04 */	stw r30, 4(r26)
/* 80481EA0  83 E6 02 D0 */	lwz r31, 0x2d0(r6)
/* 80481EA4  3B DF 00 08 */	addi r30, r31, 8
/* 80481EA8  93 C6 02 D0 */	stw r30, 0x2d0(r6)
/* 80481EAC  93 BF 00 00 */	stw r29, 0(r31)
/* 80481EB0  93 9F 00 04 */	stw r28, 4(r31)
/* 80481EB4  83 A6 02 D0 */	lwz r29, 0x2d0(r6)
/* 80481EB8  3B 9D 00 08 */	addi r28, r29, 8
/* 80481EBC  93 86 02 D0 */	stw r28, 0x2d0(r6)
/* 80481EC0  93 7D 00 00 */	stw r27, 0(r29)
/* 80481EC4  90 1D 00 04 */	stw r0, 4(r29)
/* 80481EC8  83 86 02 D0 */	lwz r28, 0x2d0(r6)
/* 80481ECC  3B 7C 00 08 */	addi r27, r28, 8
/* 80481ED0  93 66 02 D0 */	stw r27, 0x2d0(r6)
/* 80481ED4  91 9C 00 00 */	stw r12, 0(r28)
/* 80481ED8  91 7C 00 04 */	stw r11, 4(r28)
/* 80481EDC  81 86 02 D0 */	lwz r12, 0x2d0(r6)
/* 80481EE0  39 6C 00 08 */	addi r11, r12, 8
/* 80481EE4  91 66 02 D0 */	stw r11, 0x2d0(r6)
/* 80481EE8  90 AC 00 00 */	stw r5, 0(r12)
/* 80481EEC  90 0C 00 04 */	stw r0, 4(r12)
/* 80481EF0  80 A6 02 D0 */	lwz r5, 0x2d0(r6)
/* 80481EF4  38 05 00 08 */	addi r0, r5, 8
/* 80481EF8  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80481EFC  91 45 00 00 */	stw r10, 0(r5)
/* 80481F00  91 25 00 04 */	stw r9, 4(r5)
/* 80481F04  80 A6 02 D0 */	lwz r5, 0x2d0(r6)
/* 80481F08  38 05 00 08 */	addi r0, r5, 8
/* 80481F0C  90 06 02 D0 */	stw r0, 0x2d0(r6)
/* 80481F10  91 05 00 00 */	stw r8, 0(r5)
/* 80481F14  90 E5 00 04 */	stw r7, 4(r5)
lbl_80481F18:
/* 80481F18  80 03 00 08 */	lwz r0, 8(r3)
/* 80481F1C  28 00 00 00 */	cmplwi r0, 0
/* 80481F20  40 82 00 1C */	bne lbl_80481F3C
/* 80481F24  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80481F28  28 00 00 00 */	cmplwi r0, 0
/* 80481F2C  40 82 00 10 */	bne lbl_80481F3C
/* 80481F30  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80481F34  28 00 00 00 */	cmplwi r0, 0
/* 80481F38  41 82 00 F0 */	beq lbl_80482028
lbl_80481F3C:
/* 80481F3C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80481F40  3D 40 07 06 */	lis r10, 0x0706 /* 0x0705C170@ha */
/* 80481F44  3D 20 07 80 */	lis r9, 0x0780 /* 0x077FF000@ha */
/* 80481F48  3D 00 F5 88 */	lis r8, 0xF588 /* 0xF5881000@ha */
/* 80481F4C  83 65 02 E0 */	lwz r27, 0x2e0(r5)
/* 80481F50  3C E0 00 06 */	lis r7, 0x0006 /* 0x0005C170@ha */
/* 80481F54  3C C0 00 10 */	lis r6, 0x0010 /* 0x000FC0FC@ha */
/* 80481F58  3C 80 E7 00 */	lis r4, 0xe700
/* 80481F5C  39 7B 00 08 */	addi r11, r27, 8
/* 80481F60  38 00 00 00 */	li r0, 0
/* 80481F64  91 65 02 E0 */	stw r11, 0x2e0(r5)
/* 80481F68  3F A0 FD 90 */	lis r29, 0xfd90
/* 80481F6C  3F C0 F5 90 */	lis r30, 0xf590
/* 80481F70  3B EA C1 70 */	addi r31, r10, 0xC170 /* 0x0705C170@l */
/* 80481F74  90 9B 00 00 */	stw r4, 0(r27)
/* 80481F78  3D 80 E6 00 */	lis r12, 0xe600
/* 80481F7C  3D 60 F3 00 */	lis r11, 0xf300
/* 80481F80  39 49 F0 00 */	addi r10, r9, 0xF000 /* 0x077FF000@l */
/* 80481F84  90 1B 00 04 */	stw r0, 4(r27)
/* 80481F88  39 28 10 00 */	addi r9, r8, 0x1000 /* 0xF5881000@l */
/* 80481F8C  39 07 C1 70 */	addi r8, r7, 0xC170 /* 0x0005C170@l */
/* 80481F90  3C E0 F2 00 */	lis r7, 0xf200
/* 80481F94  83 65 02 E0 */	lwz r27, 0x2e0(r5)
/* 80481F98  38 C6 C0 FC */	addi r6, r6, 0xC0FC /* 0x000FC0FC@l */
/* 80481F9C  3B 9B 00 08 */	addi r28, r27, 8
/* 80481FA0  93 85 02 E0 */	stw r28, 0x2e0(r5)
/* 80481FA4  93 BB 00 00 */	stw r29, 0(r27)
/* 80481FA8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80481FAC  90 7B 00 04 */	stw r3, 4(r27)
/* 80481FB0  83 A5 02 E0 */	lwz r29, 0x2e0(r5)
/* 80481FB4  38 7D 00 08 */	addi r3, r29, 8
/* 80481FB8  90 65 02 E0 */	stw r3, 0x2e0(r5)
/* 80481FBC  93 DD 00 00 */	stw r30, 0(r29)
/* 80481FC0  93 FD 00 04 */	stw r31, 4(r29)
/* 80481FC4  83 E5 02 E0 */	lwz r31, 0x2e0(r5)
/* 80481FC8  38 7F 00 08 */	addi r3, r31, 8
/* 80481FCC  90 65 02 E0 */	stw r3, 0x2e0(r5)
/* 80481FD0  91 9F 00 00 */	stw r12, 0(r31)
/* 80481FD4  90 1F 00 04 */	stw r0, 4(r31)
/* 80481FD8  81 85 02 E0 */	lwz r12, 0x2e0(r5)
/* 80481FDC  38 6C 00 08 */	addi r3, r12, 8
/* 80481FE0  90 65 02 E0 */	stw r3, 0x2e0(r5)
/* 80481FE4  91 6C 00 00 */	stw r11, 0(r12)
/* 80481FE8  91 4C 00 04 */	stw r10, 4(r12)
/* 80481FEC  81 45 02 E0 */	lwz r10, 0x2e0(r5)
/* 80481FF0  38 6A 00 08 */	addi r3, r10, 8
/* 80481FF4  90 65 02 E0 */	stw r3, 0x2e0(r5)
/* 80481FF8  90 8A 00 00 */	stw r4, 0(r10)
/* 80481FFC  90 0A 00 04 */	stw r0, 4(r10)
/* 80482000  80 65 02 E0 */	lwz r3, 0x2e0(r5)
/* 80482004  38 03 00 08 */	addi r0, r3, 8
/* 80482008  90 05 02 E0 */	stw r0, 0x2e0(r5)
/* 8048200C  91 23 00 00 */	stw r9, 0(r3)
/* 80482010  91 03 00 04 */	stw r8, 4(r3)
/* 80482014  80 65 02 E0 */	lwz r3, 0x2e0(r5)
/* 80482018  38 03 00 08 */	addi r0, r3, 8
/* 8048201C  90 05 02 E0 */	stw r0, 0x2e0(r5)
/* 80482020  90 E3 00 00 */	stw r7, 0(r3)
/* 80482024  90 C3 00 04 */	stw r6, 4(r3)
lbl_80482028:
/* 80482028  39 61 00 20 */	addi r11, r1, 0x20
/* 8048202C  4B C1 8E E9 */	bl func_8009AF14
/* 80482030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80482034  7C 08 03 A6 */	mtlr r0
/* 80482038  38 21 00 20 */	addi r1, r1, 0x20
/* 8048203C  4E 80 00 20 */	blr 
