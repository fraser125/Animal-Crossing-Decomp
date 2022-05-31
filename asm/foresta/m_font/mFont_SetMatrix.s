lbl_803B0138:
/* 803B0138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B013C  7C 08 02 A6 */	mflr r0
/* 803B0140  3C A0 80 65 */	lis r5, first@ha /* 0x80654300@ha */
/* 803B0144  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B014C  7C 7F 1B 78 */	mr r31, r3
/* 803B0150  93 C1 00 08 */	stw r30, 8(r1)
/* 803B0154  7C 9E 23 78 */	mr r30, r4
/* 803B0158  80 05 43 00 */	lwz r0, first@l(r5)  /* 0x80654300@l */
/* 803B015C  2C 00 00 00 */	cmpwi r0, 0
/* 803B0160  41 82 00 1C */	beq lbl_803B017C
/* 803B0164  3C 60 81 16 */	lis r3, mtx_projection@ha /* 0x81167D68@ha */
/* 803B0168  38 63 7D 68 */	addi r3, r3, mtx_projection@l /* 0x81167D68@l */
/* 803B016C  4B FF FF 75 */	bl mFont_CulcOrthoMatrix
/* 803B0170  3C 60 80 65 */	lis r3, first@ha /* 0x80654300@ha */
/* 803B0174  38 00 00 00 */	li r0, 0
/* 803B0178  90 03 43 00 */	stw r0, first@l(r3)  /* 0x80654300@l */
lbl_803B017C:
/* 803B017C  48 05 C0 59 */	bl Matrix_push
/* 803B0180  3C 60 80 66 */	lis r3, MtxF_clear@ha /* 0x8065F8B0@ha */
/* 803B0184  38 63 F8 B0 */	addi r3, r3, MtxF_clear@l /* 0x8065F8B0@l */
/* 803B0188  48 05 C0 D1 */	bl Matrix_put
/* 803B018C  2C 1E 00 01 */	cmpwi r30, 1
/* 803B0190  40 82 00 4C */	bne lbl_803B01DC
/* 803B0194  81 1F 02 F0 */	lwz r8, 0x2f0(r31)
/* 803B0198  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380007@ha */
/* 803B019C  3C 80 81 16 */	lis r4, mtx_projection@ha /* 0x81167D68@ha */
/* 803B01A0  3C 60 80 66 */	lis r3, data_8065F870@ha /* 0x8065F870@ha */
/* 803B01A4  38 08 00 08 */	addi r0, r8, 8
/* 803B01A8  38 E6 00 07 */	addi r7, r6, 0x0007 /* 0xDA380007@l */
/* 803B01AC  90 1F 02 F0 */	stw r0, 0x2f0(r31)
/* 803B01B0  38 A4 7D 68 */	addi r5, r4, mtx_projection@l /* 0x81167D68@l */
/* 803B01B4  38 86 00 03 */	addi r4, r6, 3
/* 803B01B8  38 03 F8 70 */	addi r0, r3, data_8065F870@l /* 0x8065F870@l */
/* 803B01BC  90 E8 00 00 */	stw r7, 0(r8)
/* 803B01C0  90 A8 00 04 */	stw r5, 4(r8)
/* 803B01C4  80 BF 02 F0 */	lwz r5, 0x2f0(r31)
/* 803B01C8  38 65 00 08 */	addi r3, r5, 8
/* 803B01CC  90 7F 02 F0 */	stw r3, 0x2f0(r31)
/* 803B01D0  90 85 00 00 */	stw r4, 0(r5)
/* 803B01D4  90 05 00 04 */	stw r0, 4(r5)
/* 803B01D8  48 00 00 48 */	b lbl_803B0220
lbl_803B01DC:
/* 803B01DC  81 1F 02 D0 */	lwz r8, 0x2d0(r31)
/* 803B01E0  3C C0 DA 38 */	lis r6, 0xDA38 /* 0xDA380007@ha */
/* 803B01E4  3C 80 81 16 */	lis r4, mtx_projection@ha /* 0x81167D68@ha */
/* 803B01E8  3C 60 80 66 */	lis r3, data_8065F870@ha /* 0x8065F870@ha */
/* 803B01EC  38 08 00 08 */	addi r0, r8, 8
/* 803B01F0  38 E6 00 07 */	addi r7, r6, 0x0007 /* 0xDA380007@l */
/* 803B01F4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 803B01F8  38 A4 7D 68 */	addi r5, r4, mtx_projection@l /* 0x81167D68@l */
/* 803B01FC  38 86 00 03 */	addi r4, r6, 3
/* 803B0200  38 03 F8 70 */	addi r0, r3, data_8065F870@l /* 0x8065F870@l */
/* 803B0204  90 E8 00 00 */	stw r7, 0(r8)
/* 803B0208  90 A8 00 04 */	stw r5, 4(r8)
/* 803B020C  80 BF 02 D0 */	lwz r5, 0x2d0(r31)
/* 803B0210  38 65 00 08 */	addi r3, r5, 8
/* 803B0214  90 7F 02 D0 */	stw r3, 0x2d0(r31)
/* 803B0218  90 85 00 00 */	stw r4, 0(r5)
/* 803B021C  90 05 00 04 */	stw r0, 4(r5)
lbl_803B0220:
/* 803B0220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B0224  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B0228  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B022C  7C 08 03 A6 */	mtlr r0
/* 803B0230  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0234  4E 80 00 20 */	blr 
