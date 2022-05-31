lbl_80396D3C:
/* 80396D3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80396D40  7C 08 02 A6 */	mflr r0
/* 80396D44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80396D48  39 61 00 20 */	addi r11, r1, 0x20
/* 80396D4C  4B D0 41 81 */	bl func_8009AECC
/* 80396D50  7C BE 2B 78 */	mr r30, r5
/* 80396D54  3D 00 EF 80 */	lis r8, 0xEF80 /* 0xEF802CF0@ha */
/* 80396D58  81 45 00 00 */	lwz r10, 0(r5)
/* 80396D5C  3C 00 E7 00 */	lis r0, 0xe700
/* 80396D60  3C E0 0F 0A */	lis r7, 0x0F0A /* 0x0F0A4000@ha */
/* 80396D64  3C C0 FD 00 */	lis r6, 0xFD00 /* 0xFCFFFFFF@ha */
/* 80396D68  90 0A 00 00 */	stw r0, 0(r10)
/* 80396D6C  39 20 00 00 */	li r9, 0
/* 80396D70  3C A0 FF FE */	lis r5, 0xFFFE /* 0xFFFDF6FB@ha */
/* 80396D74  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80396D78  91 2A 00 04 */	stw r9, 4(r10)
/* 80396D7C  38 08 2C F0 */	addi r0, r8, 0x2CF0 /* 0xEF802CF0@l */
/* 80396D80  1D 03 00 46 */	mulli r8, r3, 0x46
/* 80396D84  38 E7 40 00 */	addi r7, r7, 0x4000 /* 0x0F0A4000@l */
/* 80396D88  90 0A 00 08 */	stw r0, 8(r10)
/* 80396D8C  38 06 FF FF */	addi r0, r6, 0xFFFF /* 0xFCFFFFFF@l */
/* 80396D90  38 65 F6 FB */	addi r3, r5, 0xF6FB /* 0xFFFDF6FB@l */
/* 80396D94  90 EA 00 0C */	stw r7, 0xc(r10)
/* 80396D98  3B E8 00 14 */	addi r31, r8, 0x14
/* 80396D9C  7C 9B 23 78 */	mr r27, r4
/* 80396DA0  90 0A 00 10 */	stw r0, 0x10(r10)
/* 80396DA4  3C 00 FA 00 */	lis r0, 0xfa00
/* 80396DA8  38 9F FF FF */	addi r4, r31, -1
/* 80396DAC  38 DF 00 41 */	addi r6, r31, 0x41
/* 80396DB0  90 6A 00 14 */	stw r3, 0x14(r10)
/* 80396DB4  38 A0 00 E1 */	li r5, 0xe1
/* 80396DB8  38 E0 00 E7 */	li r7, 0xe7
/* 80396DBC  90 0A 00 18 */	stw r0, 0x18(r10)
/* 80396DC0  91 2A 00 1C */	stw r9, 0x1c(r10)
/* 80396DC4  39 4A 00 20 */	addi r10, r10, 0x20
/* 80396DC8  7D 43 53 78 */	mr r3, r10
/* 80396DCC  48 04 EB ED */	bl gfx_gDPFillRectangle1
/* 80396DD0  57 7C 04 3E */	clrlwi r28, r27, 0x10
/* 80396DD4  3B 60 00 00 */	li r27, 0
/* 80396DD8  3B A0 00 00 */	li r29, 0
lbl_80396DDC:
/* 80396DDC  38 00 00 01 */	li r0, 1
/* 80396DE0  7C 00 D8 30 */	slw r0, r0, r27
/* 80396DE4  7F 80 00 39 */	and. r0, r28, r0
/* 80396DE8  41 82 00 40 */	beq lbl_80396E28
/* 80396DEC  3C 80 80 64 */	lis r4, data_80641C64@ha /* 0x80641C64@ha */
/* 80396DF0  3C C0 FA 00 */	lis r6, 0xfa00
/* 80396DF4  38 A4 1C 64 */	addi r5, r4, data_80641C64@l /* 0x80641C64@l */
/* 80396DF8  38 1B 00 01 */	addi r0, r27, 1
/* 80396DFC  54 04 10 3A */	slwi r4, r0, 2
/* 80396E00  90 C3 00 00 */	stw r6, 0(r3)
/* 80396E04  7C 05 E8 2E */	lwzx r0, r5, r29
/* 80396E08  38 C4 FF FF */	addi r6, r4, -1
/* 80396E0C  7C 9F EA 14 */	add r4, r31, r29
/* 80396E10  38 A0 00 E2 */	li r5, 0xe2
/* 80396E14  90 03 00 04 */	stw r0, 4(r3)
/* 80396E18  38 63 00 08 */	addi r3, r3, 8
/* 80396E1C  7C DF 32 14 */	add r6, r31, r6
/* 80396E20  38 E0 00 E5 */	li r7, 0xe5
/* 80396E24  48 04 EB 95 */	bl gfx_gDPFillRectangle1
lbl_80396E28:
/* 80396E28  3B 7B 00 01 */	addi r27, r27, 1
/* 80396E2C  3B BD 00 04 */	addi r29, r29, 4
/* 80396E30  2C 1B 00 10 */	cmpwi r27, 0x10
/* 80396E34  41 80 FF A8 */	blt lbl_80396DDC
/* 80396E38  7C 64 1B 78 */	mr r4, r3
/* 80396E3C  3C 00 E7 00 */	lis r0, 0xe700
/* 80396E40  90 03 00 00 */	stw r0, 0(r3)
/* 80396E44  38 00 00 00 */	li r0, 0
/* 80396E48  38 63 00 08 */	addi r3, r3, 8
/* 80396E4C  90 04 00 04 */	stw r0, 4(r4)
/* 80396E50  90 7E 00 00 */	stw r3, 0(r30)
/* 80396E54  39 61 00 20 */	addi r11, r1, 0x20
/* 80396E58  4B D0 40 C1 */	bl func_8009AF18
/* 80396E5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80396E60  7C 08 03 A6 */	mtlr r0
/* 80396E64  38 21 00 20 */	addi r1, r1, 0x20
/* 80396E68  4E 80 00 20 */	blr 
