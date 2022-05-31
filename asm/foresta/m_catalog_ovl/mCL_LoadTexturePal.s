lbl_805CA148:
/* 805CA148  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CA14C  7C 08 02 A6 */	mflr r0
/* 805CA150  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CA154  39 61 00 20 */	addi r11, r1, 0x20
/* 805CA158  4B AD 0D 79 */	bl func_8009AED0
/* 805CA15C  80 03 00 00 */	lwz r0, 0(r3)
/* 805CA160  80 84 00 00 */	lwz r4, 0(r4)
/* 805CA164  28 00 00 00 */	cmplwi r0, 0
/* 805CA168  40 82 00 1C */	bne lbl_805CA184
/* 805CA16C  80 03 00 04 */	lwz r0, 4(r3)
/* 805CA170  28 00 00 00 */	cmplwi r0, 0
/* 805CA174  40 82 00 10 */	bne lbl_805CA184
/* 805CA178  80 03 00 18 */	lwz r0, 0x18(r3)
/* 805CA17C  28 00 00 00 */	cmplwi r0, 0
/* 805CA180  41 82 01 98 */	beq lbl_805CA318
lbl_805CA184:
/* 805CA184  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CA188  28 00 00 00 */	cmplwi r0, 0
/* 805CA18C  41 82 00 D8 */	beq lbl_805CA264
/* 805CA190  83 E4 02 D0 */	lwz r31, 0x2d0(r4)
/* 805CA194  3D 20 07 06 */	lis r9, 0x0706 /* 0x0705C170@ha */
/* 805CA198  3D 00 07 80 */	lis r8, 0x0780 /* 0x077FF000@ha */
/* 805CA19C  3C E0 F5 88 */	lis r7, 0xF588 /* 0xF5881000@ha */
/* 805CA1A0  38 1F 00 08 */	addi r0, r31, 8
/* 805CA1A4  3C C0 00 06 */	lis r6, 0x0006 /* 0x0005C170@ha */
/* 805CA1A8  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 805CA1AC  3C 00 FD 90 */	lis r0, 0xfd90
/* 805CA1B0  3C A0 00 10 */	lis r5, 0x0010 /* 0x000FC0FC@ha */
/* 805CA1B4  3F C0 F5 90 */	lis r30, 0xf590
/* 805CA1B8  90 1F 00 00 */	stw r0, 0(r31)
/* 805CA1BC  3B A9 C1 70 */	addi r29, r9, 0xC170 /* 0x0705C170@l */
/* 805CA1C0  3D 80 E6 00 */	lis r12, 0xe600
/* 805CA1C4  3B 80 00 00 */	li r28, 0
/* 805CA1C8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CA1CC  3D 60 F3 00 */	lis r11, 0xf300
/* 805CA1D0  39 48 F0 00 */	addi r10, r8, 0xF000 /* 0x077FF000@l */
/* 805CA1D4  3D 20 E7 00 */	lis r9, 0xe700
/* 805CA1D8  90 1F 00 04 */	stw r0, 4(r31)
/* 805CA1DC  39 07 10 00 */	addi r8, r7, 0x1000 /* 0xF5881000@l */
/* 805CA1E0  38 E6 C1 70 */	addi r7, r6, 0xC170 /* 0x0005C170@l */
/* 805CA1E4  3C C0 F2 00 */	lis r6, 0xf200
/* 805CA1E8  83 E4 02 D0 */	lwz r31, 0x2d0(r4)
/* 805CA1EC  38 05 C0 FC */	addi r0, r5, 0xC0FC /* 0x000FC0FC@l */
/* 805CA1F0  38 BF 00 08 */	addi r5, r31, 8
/* 805CA1F4  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA1F8  93 DF 00 00 */	stw r30, 0(r31)
/* 805CA1FC  93 BF 00 04 */	stw r29, 4(r31)
/* 805CA200  83 A4 02 D0 */	lwz r29, 0x2d0(r4)
/* 805CA204  38 BD 00 08 */	addi r5, r29, 8
/* 805CA208  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA20C  91 9D 00 00 */	stw r12, 0(r29)
/* 805CA210  93 9D 00 04 */	stw r28, 4(r29)
/* 805CA214  81 84 02 D0 */	lwz r12, 0x2d0(r4)
/* 805CA218  38 AC 00 08 */	addi r5, r12, 8
/* 805CA21C  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA220  91 6C 00 00 */	stw r11, 0(r12)
/* 805CA224  91 4C 00 04 */	stw r10, 4(r12)
/* 805CA228  81 44 02 D0 */	lwz r10, 0x2d0(r4)
/* 805CA22C  38 AA 00 08 */	addi r5, r10, 8
/* 805CA230  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA234  91 2A 00 00 */	stw r9, 0(r10)
/* 805CA238  93 8A 00 04 */	stw r28, 4(r10)
/* 805CA23C  81 24 02 D0 */	lwz r9, 0x2d0(r4)
/* 805CA240  38 A9 00 08 */	addi r5, r9, 8
/* 805CA244  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA248  91 09 00 00 */	stw r8, 0(r9)
/* 805CA24C  90 E9 00 04 */	stw r7, 4(r9)
/* 805CA250  80 E4 02 D0 */	lwz r7, 0x2d0(r4)
/* 805CA254  38 A7 00 08 */	addi r5, r7, 8
/* 805CA258  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA25C  90 C7 00 00 */	stw r6, 0(r7)
/* 805CA260  90 07 00 04 */	stw r0, 4(r7)
lbl_805CA264:
/* 805CA264  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805CA268  28 00 00 00 */	cmplwi r0, 0
/* 805CA26C  41 82 00 AC */	beq lbl_805CA318
/* 805CA270  83 84 02 D0 */	lwz r28, 0x2d0(r4)
/* 805CA274  3C C0 F5 00 */	lis r6, 0xF500 /* 0xF50001F0@ha */
/* 805CA278  3C A0 07 04 */	lis r5, 0x0704 /* 0x0703C000@ha */
/* 805CA27C  3C 00 FD 10 */	lis r0, 0xfd10
/* 805CA280  38 FC 00 08 */	addi r7, r28, 8
/* 805CA284  3D 40 E8 00 */	lis r10, 0xe800
/* 805CA288  90 E4 02 D0 */	stw r7, 0x2d0(r4)
/* 805CA28C  39 80 00 00 */	li r12, 0
/* 805CA290  39 26 01 F0 */	addi r9, r6, 0x01F0 /* 0xF50001F0@l */
/* 805CA294  3D 00 07 00 */	lis r8, 0x700
/* 805CA298  90 1C 00 00 */	stw r0, 0(r28)
/* 805CA29C  3C E0 E6 00 */	lis r7, 0xe600
/* 805CA2A0  3C C0 F0 00 */	lis r6, 0xf000
/* 805CA2A4  38 A5 C0 00 */	addi r5, r5, 0xC000 /* 0x0703C000@l */
/* 805CA2A8  81 63 00 14 */	lwz r11, 0x14(r3)
/* 805CA2AC  3C 00 E7 00 */	lis r0, 0xe700
/* 805CA2B0  91 7C 00 04 */	stw r11, 4(r28)
/* 805CA2B4  83 84 02 D0 */	lwz r28, 0x2d0(r4)
/* 805CA2B8  39 7C 00 08 */	addi r11, r28, 8
/* 805CA2BC  91 64 02 D0 */	stw r11, 0x2d0(r4)
/* 805CA2C0  91 5C 00 00 */	stw r10, 0(r28)
/* 805CA2C4  91 9C 00 04 */	stw r12, 4(r28)
/* 805CA2C8  81 64 02 D0 */	lwz r11, 0x2d0(r4)
/* 805CA2CC  39 4B 00 08 */	addi r10, r11, 8
/* 805CA2D0  91 44 02 D0 */	stw r10, 0x2d0(r4)
/* 805CA2D4  91 2B 00 00 */	stw r9, 0(r11)
/* 805CA2D8  91 0B 00 04 */	stw r8, 4(r11)
/* 805CA2DC  81 24 02 D0 */	lwz r9, 0x2d0(r4)
/* 805CA2E0  39 09 00 08 */	addi r8, r9, 8
/* 805CA2E4  91 04 02 D0 */	stw r8, 0x2d0(r4)
/* 805CA2E8  90 E9 00 00 */	stw r7, 0(r9)
/* 805CA2EC  91 89 00 04 */	stw r12, 4(r9)
/* 805CA2F0  81 04 02 D0 */	lwz r8, 0x2d0(r4)
/* 805CA2F4  38 E8 00 08 */	addi r7, r8, 8
/* 805CA2F8  90 E4 02 D0 */	stw r7, 0x2d0(r4)
/* 805CA2FC  90 C8 00 00 */	stw r6, 0(r8)
/* 805CA300  90 A8 00 04 */	stw r5, 4(r8)
/* 805CA304  80 C4 02 D0 */	lwz r6, 0x2d0(r4)
/* 805CA308  38 A6 00 08 */	addi r5, r6, 8
/* 805CA30C  90 A4 02 D0 */	stw r5, 0x2d0(r4)
/* 805CA310  90 06 00 00 */	stw r0, 0(r6)
/* 805CA314  91 86 00 04 */	stw r12, 4(r6)
lbl_805CA318:
/* 805CA318  80 03 00 08 */	lwz r0, 8(r3)
/* 805CA31C  28 00 00 00 */	cmplwi r0, 0
/* 805CA320  40 82 00 1C */	bne lbl_805CA33C
/* 805CA324  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CA328  28 00 00 00 */	cmplwi r0, 0
/* 805CA32C  40 82 00 10 */	bne lbl_805CA33C
/* 805CA330  80 03 00 18 */	lwz r0, 0x18(r3)
/* 805CA334  28 00 00 00 */	cmplwi r0, 0
/* 805CA338  41 82 01 98 */	beq lbl_805CA4D0
lbl_805CA33C:
/* 805CA33C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CA340  28 00 00 00 */	cmplwi r0, 0
/* 805CA344  41 82 00 D8 */	beq lbl_805CA41C
/* 805CA348  83 84 02 E0 */	lwz r28, 0x2e0(r4)
/* 805CA34C  3D 20 07 06 */	lis r9, 0x0706 /* 0x0705C170@ha */
/* 805CA350  3D 00 07 80 */	lis r8, 0x0780 /* 0x077FF000@ha */
/* 805CA354  3C E0 F5 88 */	lis r7, 0xF588 /* 0xF5881000@ha */
/* 805CA358  38 1C 00 08 */	addi r0, r28, 8
/* 805CA35C  3C C0 00 06 */	lis r6, 0x0006 /* 0x0005C170@ha */
/* 805CA360  90 04 02 E0 */	stw r0, 0x2e0(r4)
/* 805CA364  3C 00 FD 90 */	lis r0, 0xfd90
/* 805CA368  3C A0 00 10 */	lis r5, 0x0010 /* 0x000FC0FC@ha */
/* 805CA36C  3F A0 F5 90 */	lis r29, 0xf590
/* 805CA370  90 1C 00 00 */	stw r0, 0(r28)
/* 805CA374  3B C9 C1 70 */	addi r30, r9, 0xC170 /* 0x0705C170@l */
/* 805CA378  3D 80 E6 00 */	lis r12, 0xe600
/* 805CA37C  3B E0 00 00 */	li r31, 0
/* 805CA380  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805CA384  3D 60 F3 00 */	lis r11, 0xf300
/* 805CA388  39 48 F0 00 */	addi r10, r8, 0xF000 /* 0x077FF000@l */
/* 805CA38C  3D 20 E7 00 */	lis r9, 0xe700
/* 805CA390  90 1C 00 04 */	stw r0, 4(r28)
/* 805CA394  39 07 10 00 */	addi r8, r7, 0x1000 /* 0xF5881000@l */
/* 805CA398  38 E6 C1 70 */	addi r7, r6, 0xC170 /* 0x0005C170@l */
/* 805CA39C  3C C0 F2 00 */	lis r6, 0xf200
/* 805CA3A0  83 84 02 E0 */	lwz r28, 0x2e0(r4)
/* 805CA3A4  38 05 C0 FC */	addi r0, r5, 0xC0FC /* 0x000FC0FC@l */
/* 805CA3A8  38 BC 00 08 */	addi r5, r28, 8
/* 805CA3AC  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 805CA3B0  93 BC 00 00 */	stw r29, 0(r28)
/* 805CA3B4  93 DC 00 04 */	stw r30, 4(r28)
/* 805CA3B8  83 C4 02 E0 */	lwz r30, 0x2e0(r4)
/* 805CA3BC  38 BE 00 08 */	addi r5, r30, 8
/* 805CA3C0  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 805CA3C4  91 9E 00 00 */	stw r12, 0(r30)
/* 805CA3C8  93 FE 00 04 */	stw r31, 4(r30)
/* 805CA3CC  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805CA3D0  38 AC 00 08 */	addi r5, r12, 8
/* 805CA3D4  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 805CA3D8  91 6C 00 00 */	stw r11, 0(r12)
/* 805CA3DC  91 4C 00 04 */	stw r10, 4(r12)
/* 805CA3E0  81 44 02 E0 */	lwz r10, 0x2e0(r4)
/* 805CA3E4  38 AA 00 08 */	addi r5, r10, 8
/* 805CA3E8  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 805CA3EC  91 2A 00 00 */	stw r9, 0(r10)
/* 805CA3F0  93 EA 00 04 */	stw r31, 4(r10)
/* 805CA3F4  81 24 02 E0 */	lwz r9, 0x2e0(r4)
/* 805CA3F8  38 A9 00 08 */	addi r5, r9, 8
/* 805CA3FC  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 805CA400  91 09 00 00 */	stw r8, 0(r9)
/* 805CA404  90 E9 00 04 */	stw r7, 4(r9)
/* 805CA408  80 E4 02 E0 */	lwz r7, 0x2e0(r4)
/* 805CA40C  38 A7 00 08 */	addi r5, r7, 8
/* 805CA410  90 A4 02 E0 */	stw r5, 0x2e0(r4)
/* 805CA414  90 C7 00 00 */	stw r6, 0(r7)
/* 805CA418  90 07 00 04 */	stw r0, 4(r7)
lbl_805CA41C:
/* 805CA41C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805CA420  28 00 00 00 */	cmplwi r0, 0
/* 805CA424  41 82 00 AC */	beq lbl_805CA4D0
/* 805CA428  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805CA42C  3C C0 F5 00 */	lis r6, 0xF500 /* 0xF50001F0@ha */
/* 805CA430  3C A0 07 04 */	lis r5, 0x0704 /* 0x0703C000@ha */
/* 805CA434  3C 00 FD 10 */	lis r0, 0xfd10
/* 805CA438  38 EC 00 08 */	addi r7, r12, 8
/* 805CA43C  3D 40 E8 00 */	lis r10, 0xe800
/* 805CA440  90 E4 02 E0 */	stw r7, 0x2e0(r4)
/* 805CA444  39 60 00 00 */	li r11, 0
/* 805CA448  39 26 01 F0 */	addi r9, r6, 0x01F0 /* 0xF50001F0@l */
/* 805CA44C  3D 00 07 00 */	lis r8, 0x700
/* 805CA450  90 0C 00 00 */	stw r0, 0(r12)
/* 805CA454  3C E0 E6 00 */	lis r7, 0xe600
/* 805CA458  3C C0 F0 00 */	lis r6, 0xf000
/* 805CA45C  38 A5 C0 00 */	addi r5, r5, 0xC000 /* 0x0703C000@l */
/* 805CA460  80 63 00 14 */	lwz r3, 0x14(r3)
/* 805CA464  3C 00 E7 00 */	lis r0, 0xe700
/* 805CA468  90 6C 00 04 */	stw r3, 4(r12)
/* 805CA46C  81 84 02 E0 */	lwz r12, 0x2e0(r4)
/* 805CA470  38 6C 00 08 */	addi r3, r12, 8
/* 805CA474  90 64 02 E0 */	stw r3, 0x2e0(r4)
/* 805CA478  91 4C 00 00 */	stw r10, 0(r12)
/* 805CA47C  91 6C 00 04 */	stw r11, 4(r12)
/* 805CA480  81 44 02 E0 */	lwz r10, 0x2e0(r4)
/* 805CA484  38 6A 00 08 */	addi r3, r10, 8
/* 805CA488  90 64 02 E0 */	stw r3, 0x2e0(r4)
/* 805CA48C  91 2A 00 00 */	stw r9, 0(r10)
/* 805CA490  91 0A 00 04 */	stw r8, 4(r10)
/* 805CA494  81 04 02 E0 */	lwz r8, 0x2e0(r4)
/* 805CA498  38 68 00 08 */	addi r3, r8, 8
/* 805CA49C  90 64 02 E0 */	stw r3, 0x2e0(r4)
/* 805CA4A0  90 E8 00 00 */	stw r7, 0(r8)
/* 805CA4A4  91 68 00 04 */	stw r11, 4(r8)
/* 805CA4A8  80 E4 02 E0 */	lwz r7, 0x2e0(r4)
/* 805CA4AC  38 67 00 08 */	addi r3, r7, 8
/* 805CA4B0  90 64 02 E0 */	stw r3, 0x2e0(r4)
/* 805CA4B4  90 C7 00 00 */	stw r6, 0(r7)
/* 805CA4B8  90 A7 00 04 */	stw r5, 4(r7)
/* 805CA4BC  80 A4 02 E0 */	lwz r5, 0x2e0(r4)
/* 805CA4C0  38 65 00 08 */	addi r3, r5, 8
/* 805CA4C4  90 64 02 E0 */	stw r3, 0x2e0(r4)
/* 805CA4C8  90 05 00 00 */	stw r0, 0(r5)
/* 805CA4CC  91 65 00 04 */	stw r11, 4(r5)
lbl_805CA4D0:
/* 805CA4D0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CA4D4  4B AD 0A 49 */	bl func_8009AF1C
/* 805CA4D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CA4DC  7C 08 03 A6 */	mtlr r0
/* 805CA4E0  38 21 00 20 */	addi r1, r1, 0x20
/* 805CA4E4  4E 80 00 20 */	blr 
