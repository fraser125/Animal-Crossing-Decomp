lbl_80481BE8:
/* 80481BE8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80481BEC  7C 08 02 A6 */	mflr r0
/* 80481BF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80481BF4  39 61 00 20 */	addi r11, r1, 0x20
/* 80481BF8  4B C1 92 DD */	bl func_8009AED4
/* 80481BFC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80481C00  28 00 00 00 */	cmplwi r0, 0
/* 80481C04  41 82 01 CC */	beq lbl_80481DD0
/* 80481C08  80 03 00 00 */	lwz r0, 0(r3)
/* 80481C0C  28 00 00 00 */	cmplwi r0, 0
/* 80481C10  40 82 00 1C */	bne lbl_80481C2C
/* 80481C14  80 03 00 04 */	lwz r0, 4(r3)
/* 80481C18  28 00 00 00 */	cmplwi r0, 0
/* 80481C1C  40 82 00 10 */	bne lbl_80481C2C
/* 80481C20  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80481C24  28 00 00 00 */	cmplwi r0, 0
/* 80481C28  41 82 00 C4 */	beq lbl_80481CEC
lbl_80481C2C:
/* 80481C2C  80 A4 00 00 */	lwz r5, 0(r4)
/* 80481C30  3C E0 F5 00 */	lis r7, 0xF500 /* 0xF50001F0@ha */
/* 80481C34  3C C0 07 04 */	lis r6, 0x0704 /* 0x0703C000@ha */
/* 80481C38  3F A0 E7 00 */	lis r29, 0xe700
/* 80481C3C  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80481C40  3B C0 00 00 */	li r30, 0
/* 80481C44  3D 80 FD 10 */	lis r12, 0xfd10
/* 80481C48  3D 60 E8 00 */	lis r11, 0xe800
/* 80481C4C  38 1F 00 08 */	addi r0, r31, 8
/* 80481C50  39 47 01 F0 */	addi r10, r7, 0x01F0 /* 0xF50001F0@l */
/* 80481C54  90 05 02 D0 */	stw r0, 0x2d0(r5)
/* 80481C58  3D 20 07 00 */	lis r9, 0x700
/* 80481C5C  3D 00 E6 00 */	lis r8, 0xe600
/* 80481C60  3C E0 F0 00 */	lis r7, 0xf000
/* 80481C64  93 BF 00 00 */	stw r29, 0(r31)
/* 80481C68  38 06 C0 00 */	addi r0, r6, 0xC000 /* 0x0703C000@l */
/* 80481C6C  93 DF 00 04 */	stw r30, 4(r31)
/* 80481C70  83 E5 02 D0 */	lwz r31, 0x2d0(r5)
/* 80481C74  38 DF 00 08 */	addi r6, r31, 8
/* 80481C78  90 C5 02 D0 */	stw r6, 0x2d0(r5)
/* 80481C7C  91 9F 00 00 */	stw r12, 0(r31)
/* 80481C80  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 80481C84  90 DF 00 04 */	stw r6, 4(r31)
/* 80481C88  81 85 02 D0 */	lwz r12, 0x2d0(r5)
/* 80481C8C  38 CC 00 08 */	addi r6, r12, 8
/* 80481C90  90 C5 02 D0 */	stw r6, 0x2d0(r5)
/* 80481C94  91 6C 00 00 */	stw r11, 0(r12)
/* 80481C98  93 CC 00 04 */	stw r30, 4(r12)
/* 80481C9C  81 65 02 D0 */	lwz r11, 0x2d0(r5)
/* 80481CA0  38 CB 00 08 */	addi r6, r11, 8
/* 80481CA4  90 C5 02 D0 */	stw r6, 0x2d0(r5)
/* 80481CA8  91 4B 00 00 */	stw r10, 0(r11)
/* 80481CAC  91 2B 00 04 */	stw r9, 4(r11)
/* 80481CB0  81 25 02 D0 */	lwz r9, 0x2d0(r5)
/* 80481CB4  38 C9 00 08 */	addi r6, r9, 8
/* 80481CB8  90 C5 02 D0 */	stw r6, 0x2d0(r5)
/* 80481CBC  91 09 00 00 */	stw r8, 0(r9)
/* 80481CC0  93 C9 00 04 */	stw r30, 4(r9)
/* 80481CC4  81 05 02 D0 */	lwz r8, 0x2d0(r5)
/* 80481CC8  38 C8 00 08 */	addi r6, r8, 8
/* 80481CCC  90 C5 02 D0 */	stw r6, 0x2d0(r5)
/* 80481CD0  90 E8 00 00 */	stw r7, 0(r8)
/* 80481CD4  90 08 00 04 */	stw r0, 4(r8)
/* 80481CD8  80 C5 02 D0 */	lwz r6, 0x2d0(r5)
/* 80481CDC  38 06 00 08 */	addi r0, r6, 8
/* 80481CE0  90 05 02 D0 */	stw r0, 0x2d0(r5)
/* 80481CE4  93 A6 00 00 */	stw r29, 0(r6)
/* 80481CE8  93 C6 00 04 */	stw r30, 4(r6)
lbl_80481CEC:
/* 80481CEC  80 03 00 08 */	lwz r0, 8(r3)
/* 80481CF0  28 00 00 00 */	cmplwi r0, 0
/* 80481CF4  40 82 00 1C */	bne lbl_80481D10
/* 80481CF8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80481CFC  28 00 00 00 */	cmplwi r0, 0
/* 80481D00  40 82 00 10 */	bne lbl_80481D10
/* 80481D04  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80481D08  28 00 00 00 */	cmplwi r0, 0
/* 80481D0C  41 82 00 C4 */	beq lbl_80481DD0
lbl_80481D10:
/* 80481D10  83 A4 00 00 */	lwz r29, 0(r4)
/* 80481D14  3C A0 F5 00 */	lis r5, 0xF500 /* 0xF50001F0@ha */
/* 80481D18  3C 80 07 04 */	lis r4, 0x0704 /* 0x0703C000@ha */
/* 80481D1C  3F E0 E7 00 */	lis r31, 0xe700
/* 80481D20  81 7D 02 E0 */	lwz r11, 0x2e0(r29)
/* 80481D24  39 80 00 00 */	li r12, 0
/* 80481D28  3D 40 FD 10 */	lis r10, 0xfd10
/* 80481D2C  3D 20 E8 00 */	lis r9, 0xe800
/* 80481D30  38 0B 00 08 */	addi r0, r11, 8
/* 80481D34  39 05 01 F0 */	addi r8, r5, 0x01F0 /* 0xF50001F0@l */
/* 80481D38  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80481D3C  3C E0 07 00 */	lis r7, 0x700
/* 80481D40  3C C0 E6 00 */	lis r6, 0xe600
/* 80481D44  3C A0 F0 00 */	lis r5, 0xf000
/* 80481D48  93 EB 00 00 */	stw r31, 0(r11)
/* 80481D4C  38 04 C0 00 */	addi r0, r4, 0xC000 /* 0x0703C000@l */
/* 80481D50  91 8B 00 04 */	stw r12, 4(r11)
/* 80481D54  81 7D 02 E0 */	lwz r11, 0x2e0(r29)
/* 80481D58  38 8B 00 08 */	addi r4, r11, 8
/* 80481D5C  90 9D 02 E0 */	stw r4, 0x2e0(r29)
/* 80481D60  91 4B 00 00 */	stw r10, 0(r11)
/* 80481D64  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80481D68  90 6B 00 04 */	stw r3, 4(r11)
/* 80481D6C  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 80481D70  38 64 00 08 */	addi r3, r4, 8
/* 80481D74  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80481D78  91 24 00 00 */	stw r9, 0(r4)
/* 80481D7C  91 84 00 04 */	stw r12, 4(r4)
/* 80481D80  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 80481D84  38 64 00 08 */	addi r3, r4, 8
/* 80481D88  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80481D8C  91 04 00 00 */	stw r8, 0(r4)
/* 80481D90  90 E4 00 04 */	stw r7, 4(r4)
/* 80481D94  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 80481D98  38 64 00 08 */	addi r3, r4, 8
/* 80481D9C  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80481DA0  90 C4 00 00 */	stw r6, 0(r4)
/* 80481DA4  91 84 00 04 */	stw r12, 4(r4)
/* 80481DA8  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 80481DAC  38 64 00 08 */	addi r3, r4, 8
/* 80481DB0  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 80481DB4  90 A4 00 00 */	stw r5, 0(r4)
/* 80481DB8  90 04 00 04 */	stw r0, 4(r4)
/* 80481DBC  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 80481DC0  38 03 00 08 */	addi r0, r3, 8
/* 80481DC4  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 80481DC8  93 E3 00 00 */	stw r31, 0(r3)
/* 80481DCC  91 83 00 04 */	stw r12, 4(r3)
lbl_80481DD0:
/* 80481DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80481DD4  4B C1 91 4D */	bl func_8009AF20
/* 80481DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80481DDC  7C 08 03 A6 */	mtlr r0
/* 80481DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80481DE4  4E 80 00 20 */	blr 
