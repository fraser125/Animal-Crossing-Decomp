lbl_8040453C:
/* 8040453C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404540  54 A0 15 3A */	rlwinm r0, r5, 2, 0x14, 0x1d
/* 80404544  3D 20 EF 00 */	lis r9, 0xEF00 /* 0xEF000CF0@ha */
/* 80404548  3D 00 0F A5 */	lis r8, 0x0FA5 /* 0x0FA54044@ha */
/* 8040454C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80404550  54 C6 72 22 */	rlwinm r6, r6, 0xe, 8, 0x11
/* 80404554  3F E0 E7 00 */	lis r31, 0xe700
/* 80404558  39 80 00 00 */	li r12, 0
/* 8040455C  93 C1 00 08 */	stw r30, 8(r1)
/* 80404560  3D 40 F9 00 */	lis r10, 0xf900
/* 80404564  38 A0 FF 08 */	li r5, -248
/* 80404568  3D 60 EE 00 */	lis r11, 0xee00
/* 8040456C  83 C3 00 00 */	lwz r30, 0(r3)
/* 80404570  39 29 0C F0 */	addi r9, r9, 0x0CF0 /* 0xEF000CF0@l */
/* 80404574  39 08 40 44 */	addi r8, r8, 0x4044 /* 0x0FA54044@l */
/* 80404578  64 C6 F6 00 */	oris r6, r6, 0xf600
/* 8040457C  93 FE 00 00 */	stw r31, 0(r30)
/* 80404580  50 80 72 22 */	rlwimi r0, r4, 0xe, 8, 0x11
/* 80404584  91 9E 00 04 */	stw r12, 4(r30)
/* 80404588  91 5E 00 08 */	stw r10, 8(r30)
/* 8040458C  39 40 FF FF */	li r10, -1
/* 80404590  90 BE 00 0C */	stw r5, 0xc(r30)
/* 80404594  54 E5 15 3A */	rlwinm r5, r7, 2, 0x14, 0x1d
/* 80404598  7C C5 2B 78 */	or r5, r6, r5
/* 8040459C  91 7E 00 10 */	stw r11, 0x10(r30)
/* 804045A0  91 5E 00 14 */	stw r10, 0x14(r30)
/* 804045A4  91 3E 00 18 */	stw r9, 0x18(r30)
/* 804045A8  91 1E 00 1C */	stw r8, 0x1c(r30)
/* 804045AC  90 BE 00 20 */	stw r5, 0x20(r30)
/* 804045B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 804045B4  3B DE 00 28 */	addi r30, r30, 0x28
/* 804045B8  7F C4 F3 78 */	mr r4, r30
/* 804045BC  93 FE 00 00 */	stw r31, 0(r30)
/* 804045C0  3B DE 00 08 */	addi r30, r30, 8
/* 804045C4  91 84 00 04 */	stw r12, 4(r4)
/* 804045C8  93 C3 00 00 */	stw r30, 0(r3)
/* 804045CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804045D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804045D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804045D8  4E 80 00 20 */	blr 