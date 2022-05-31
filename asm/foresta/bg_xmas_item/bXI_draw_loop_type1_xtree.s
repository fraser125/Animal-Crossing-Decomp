lbl_804CD1B0:
/* 804CD1B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CD1B4  7C 08 02 A6 */	mflr r0
/* 804CD1B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CD1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD1C0  4B BC DD 0D */	bl func_8009AECC
/* 804CD1C4  89 05 00 05 */	lbz r8, 5(r5)
/* 804CD1C8  7C 9D 23 78 */	mr r29, r4
/* 804CD1CC  80 84 00 00 */	lwz r4, 0(r4)
/* 804CD1D0  3C 00 DE 00 */	lis r0, 0xde00
/* 804CD1D4  55 08 10 3A */	slwi r8, r8, 2
/* 804CD1D8  7C 7C 1B 78 */	mr r28, r3
/* 804CD1DC  7F E7 40 2E */	lwzx r31, r7, r8
/* 804CD1E0  38 64 00 08 */	addi r3, r4, 8
/* 804CD1E4  7C DE 33 78 */	mr r30, r6
/* 804CD1E8  90 7D 00 00 */	stw r3, 0(r29)
/* 804CD1EC  90 04 00 00 */	stw r0, 0(r4)
/* 804CD1F0  88 05 00 04 */	lbz r0, 4(r5)
/* 804CD1F4  54 00 10 3A */	slwi r0, r0, 2
/* 804CD1F8  7C 07 00 2E */	lwzx r0, r7, r0
/* 804CD1FC  90 04 00 04 */	stw r0, 4(r4)
/* 804CD200  48 00 00 EC */	b lbl_804CD2EC
lbl_804CD204:
/* 804CD204  88 1E 00 46 */	lbz r0, 0x46(r30)
/* 804CD208  28 00 00 00 */	cmplwi r0, 0
/* 804CD20C  40 82 00 D4 */	bne lbl_804CD2E0
/* 804CD210  7F C3 F3 78 */	mr r3, r30
/* 804CD214  4B F3 F0 45 */	bl Matrix_put
/* 804CD218  83 7D 00 00 */	lwz r27, 0(r29)
/* 804CD21C  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CD220  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CD224  7F 83 E3 78 */	mr r3, r28
/* 804CD228  38 9B 00 08 */	addi r4, r27, 8
/* 804CD22C  90 9D 00 00 */	stw r4, 0(r29)
/* 804CD230  90 1B 00 00 */	stw r0, 0(r27)
/* 804CD234  4B F4 01 A1 */	bl _Matrix_to_Mtx_new
/* 804CD238  90 7B 00 04 */	stw r3, 4(r27)
/* 804CD23C  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 804CD240  A8 63 00 02 */	lha r3, 2(r3)
/* 804CD244  7C 60 07 35 */	extsh. r0, r3
/* 804CD248  40 82 00 2C */	bne lbl_804CD274
/* 804CD24C  80 BD 00 00 */	lwz r5, 0(r29)
/* 804CD250  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804CD254  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFF64FF@ha */
/* 804CD258  38 05 00 08 */	addi r0, r5, 8
/* 804CD25C  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 804CD260  90 1D 00 00 */	stw r0, 0(r29)
/* 804CD264  38 03 64 FF */	addi r0, r3, 0x64FF /* 0xFFFF64FF@l */
/* 804CD268  90 85 00 00 */	stw r4, 0(r5)
/* 804CD26C  90 05 00 04 */	stw r0, 4(r5)
/* 804CD270  48 00 00 58 */	b lbl_804CD2C8
lbl_804CD274:
/* 804CD274  2C 03 00 01 */	cmpwi r3, 1
/* 804CD278  40 82 00 2C */	bne lbl_804CD2A4
/* 804CD27C  80 BD 00 00 */	lwz r5, 0(r29)
/* 804CD280  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804CD284  3C 60 65 00 */	lis r3, 0x6500 /* 0x64FFFFFF@ha */
/* 804CD288  38 05 00 08 */	addi r0, r5, 8
/* 804CD28C  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 804CD290  90 1D 00 00 */	stw r0, 0(r29)
/* 804CD294  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x64FFFFFF@l */
/* 804CD298  90 85 00 00 */	stw r4, 0(r5)
/* 804CD29C  90 05 00 04 */	stw r0, 4(r5)
/* 804CD2A0  48 00 00 28 */	b lbl_804CD2C8
lbl_804CD2A4:
/* 804CD2A4  80 BD 00 00 */	lwz r5, 0(r29)
/* 804CD2A8  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804CD2AC  3C 60 FF 65 */	lis r3, 0xFF65 /* 0xFF64FFFF@ha */
/* 804CD2B0  38 05 00 08 */	addi r0, r5, 8
/* 804CD2B4  38 84 00 80 */	addi r4, r4, 0x0080 /* 0xFA000080@l */
/* 804CD2B8  90 1D 00 00 */	stw r0, 0(r29)
/* 804CD2BC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0xFF64FFFF@l */
/* 804CD2C0  90 85 00 00 */	stw r4, 0(r5)
/* 804CD2C4  90 05 00 04 */	stw r0, 4(r5)
lbl_804CD2C8:
/* 804CD2C8  80 9D 00 00 */	lwz r4, 0(r29)
/* 804CD2CC  3C 00 DE 00 */	lis r0, 0xde00
/* 804CD2D0  38 64 00 08 */	addi r3, r4, 8
/* 804CD2D4  90 7D 00 00 */	stw r3, 0(r29)
/* 804CD2D8  90 04 00 00 */	stw r0, 0(r4)
/* 804CD2DC  93 E4 00 04 */	stw r31, 4(r4)
lbl_804CD2E0:
/* 804CD2E0  A8 1E 00 44 */	lha r0, 0x44(r30)
/* 804CD2E4  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CD2E8  7F DE 02 14 */	add r30, r30, r0
lbl_804CD2EC:
/* 804CD2EC  A8 1E 00 44 */	lha r0, 0x44(r30)
/* 804CD2F0  2C 00 01 00 */	cmpwi r0, 0x100
/* 804CD2F4  40 82 FF 10 */	bne lbl_804CD204
/* 804CD2F8  81 3D 00 00 */	lwz r9, 0(r29)
/* 804CD2FC  3C A0 FA 00 */	lis r5, 0xFA00 /* 0xFA000080@ha */
/* 804CD300  3C 80 00 23 */	lis r4, 0x0023 /* 0x00230405@ha */
/* 804CD304  3C 60 FC 12 */	lis r3, 0xFC12 /* 0xFC127E60@ha */
/* 804CD308  38 09 00 08 */	addi r0, r9, 8
/* 804CD30C  3D 00 E7 00 */	lis r8, 0xe700
/* 804CD310  90 1D 00 00 */	stw r0, 0(r29)
/* 804CD314  38 00 00 00 */	li r0, 0
/* 804CD318  38 E5 00 80 */	addi r7, r5, 0x0080 /* 0xFA000080@l */
/* 804CD31C  38 C0 FF FF */	li r6, -1
/* 804CD320  91 09 00 00 */	stw r8, 0(r9)
/* 804CD324  3C A0 D9 00 */	lis r5, 0xd900
/* 804CD328  38 84 04 05 */	addi r4, r4, 0x0405 /* 0x00230405@l */
/* 804CD32C  38 63 7E 60 */	addi r3, r3, 0x7E60 /* 0xFC127E60@l */
/* 804CD330  90 09 00 04 */	stw r0, 4(r9)
/* 804CD334  38 00 F3 F8 */	li r0, -3080
/* 804CD338  81 3D 00 00 */	lwz r9, 0(r29)
/* 804CD33C  39 09 00 08 */	addi r8, r9, 8
/* 804CD340  91 1D 00 00 */	stw r8, 0(r29)
/* 804CD344  90 E9 00 00 */	stw r7, 0(r9)
/* 804CD348  90 C9 00 04 */	stw r6, 4(r9)
/* 804CD34C  80 FD 00 00 */	lwz r7, 0(r29)
/* 804CD350  38 C7 00 08 */	addi r6, r7, 8
/* 804CD354  90 DD 00 00 */	stw r6, 0(r29)
/* 804CD358  90 A7 00 00 */	stw r5, 0(r7)
/* 804CD35C  90 87 00 04 */	stw r4, 4(r7)
/* 804CD360  80 BD 00 00 */	lwz r5, 0(r29)
/* 804CD364  38 85 00 08 */	addi r4, r5, 8
/* 804CD368  90 9D 00 00 */	stw r4, 0(r29)
/* 804CD36C  90 65 00 00 */	stw r3, 0(r5)
/* 804CD370  90 05 00 04 */	stw r0, 4(r5)
/* 804CD374  39 61 00 20 */	addi r11, r1, 0x20
/* 804CD378  4B BC DB A1 */	bl func_8009AF18
/* 804CD37C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CD380  7C 08 03 A6 */	mtlr r0
/* 804CD384  38 21 00 20 */	addi r1, r1, 0x20
/* 804CD388  4E 80 00 20 */	blr 
