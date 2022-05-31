lbl_805DAFA4:
/* 805DAFA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DAFA8  7C 08 02 A6 */	mflr r0
/* 805DAFAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DAFB0  39 61 00 20 */	addi r11, r1, 0x20
/* 805DAFB4  4B AB FF 1D */	bl func_8009AED0
/* 805DAFB8  3C A0 80 6D */	lis r5, data_806CC8D8@ha /* 0x806CC8D8@ha */
/* 805DAFBC  7C 7D 1B 78 */	mr r29, r3
/* 805DAFC0  7C 9C 23 78 */	mr r28, r4
/* 805DAFC4  3B C0 00 00 */	li r30, 0
/* 805DAFC8  3B E5 C8 D8 */	addi r31, r5, data_806CC8D8@l /* 0x806CC8D8@l */
/* 805DAFCC  38 60 00 20 */	li r3, 0x20
/* 805DAFD0  4B DB AE A1 */	bl chkButton
/* 805DAFD4  2C 03 00 00 */	cmpwi r3, 0
/* 805DAFD8  41 82 00 08 */	beq lbl_805DAFE0
/* 805DAFDC  3B C0 00 01 */	li r30, 1
lbl_805DAFE0:
/* 805DAFE0  88 7C 00 05 */	lbz r3, 5(r28)
/* 805DAFE4  38 DF 05 84 */	addi r6, r31, 0x584
/* 805DAFE8  88 1C 00 06 */	lbz r0, 6(r28)
/* 805DAFEC  3C 80 80 A7 */	lis r4, kai_sousa_lwaku_model@ha /* 0x80A6D818@ha */
/* 805DAFF0  54 65 20 36 */	slwi r5, r3, 4
/* 805DAFF4  80 7D 02 D0 */	lwz r3, 0x2d0(r29)
/* 805DAFF8  54 00 18 38 */	slwi r0, r0, 3
/* 805DAFFC  3C E0 E7 00 */	lis r7, 0xe700
/* 805DB000  7D 25 02 14 */	add r9, r5, r0
/* 805DB004  38 A0 00 00 */	li r5, 0
/* 805DB008  7D 26 4A 14 */	add r9, r6, r9
/* 805DB00C  38 04 D8 18 */	addi r0, r4, kai_sousa_lwaku_model@l /* 0x80A6D818@l */
/* 805DB010  81 09 00 04 */	lwz r8, 4(r9)
/* 805DB014  39 5F 05 BC */	addi r10, r31, 0x5bc
/* 805DB018  3C C0 DE 00 */	lis r6, 0xde00
/* 805DB01C  90 E3 00 00 */	stw r7, 0(r3)
/* 805DB020  1C 88 00 05 */	mulli r4, r8, 5
/* 805DB024  90 A3 00 04 */	stw r5, 4(r3)
/* 805DB028  7D 4A 22 14 */	add r10, r10, r4
/* 805DB02C  88 8A 00 04 */	lbz r4, 4(r10)
/* 805DB030  64 84 FA 00 */	oris r4, r4, 0xfa00
/* 805DB034  90 83 00 08 */	stw r4, 8(r3)
/* 805DB038  88 8A 00 01 */	lbz r4, 1(r10)
/* 805DB03C  88 AA 00 00 */	lbz r5, 0(r10)
/* 805DB040  54 84 82 1E */	rlwinm r4, r4, 0x10, 8, 0xf
/* 805DB044  88 EA 00 02 */	lbz r7, 2(r10)
/* 805DB048  50 A4 C0 0E */	rlwimi r4, r5, 0x18, 0, 7
/* 805DB04C  89 0A 00 03 */	lbz r8, 3(r10)
/* 805DB050  50 E4 44 2E */	rlwimi r4, r7, 8, 0x10, 0x17
/* 805DB054  51 04 06 3E */	rlwimi r4, r8, 0, 0x18, 0x1f
/* 805DB058  90 83 00 0C */	stw r4, 0xc(r3)
/* 805DB05C  90 C3 00 10 */	stw r6, 0x10(r3)
/* 805DB060  90 03 00 14 */	stw r0, 0x14(r3)
/* 805DB064  38 63 00 18 */	addi r3, r3, 0x18
/* 805DB068  80 09 00 00 */	lwz r0, 0(r9)
/* 805DB06C  28 00 00 00 */	cmplwi r0, 0
/* 805DB070  41 82 00 2C */	beq lbl_805DB09C
/* 805DB074  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805DB078  3C 80 80 A7 */	lis r4, kai_sousa_lmoji_model@ha /* 0x80A6D970@ha */
/* 805DB07C  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805DB080  90 03 00 00 */	stw r0, 0(r3)
/* 805DB084  38 04 D9 70 */	addi r0, r4, kai_sousa_lmoji_model@l /* 0x80A6D970@l */
/* 805DB088  80 89 00 00 */	lwz r4, 0(r9)
/* 805DB08C  90 83 00 04 */	stw r4, 4(r3)
/* 805DB090  90 C3 00 08 */	stw r6, 8(r3)
/* 805DB094  90 03 00 0C */	stw r0, 0xc(r3)
/* 805DB098  38 63 00 10 */	addi r3, r3, 0x10
lbl_805DB09C:
/* 805DB09C  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060020@ha */
/* 805DB0A0  3C 80 80 A7 */	lis r4, kai_sousa_lbuttonT_model@ha /* 0x80A6D9A8@ha */
/* 805DB0A4  38 05 00 20 */	addi r0, r5, 0x0020 /* 0xDB060020@l */
/* 805DB0A8  57 C7 10 3A */	slwi r7, r30, 2
/* 805DB0AC  90 03 00 00 */	stw r0, 0(r3)
/* 805DB0B0  38 DF 05 B4 */	addi r6, r31, 0x5b4
/* 805DB0B4  3C A0 DE 00 */	lis r5, 0xde00
/* 805DB0B8  38 04 D9 A8 */	addi r0, r4, kai_sousa_lbuttonT_model@l /* 0x80A6D9A8@l */
/* 805DB0BC  7C 86 38 2E */	lwzx r4, r6, r7
/* 805DB0C0  90 83 00 04 */	stw r4, 4(r3)
/* 805DB0C4  38 63 00 08 */	addi r3, r3, 8
/* 805DB0C8  7C 64 1B 78 */	mr r4, r3
/* 805DB0CC  90 A3 00 00 */	stw r5, 0(r3)
/* 805DB0D0  38 63 00 08 */	addi r3, r3, 8
/* 805DB0D4  90 04 00 04 */	stw r0, 4(r4)
/* 805DB0D8  90 7D 02 D0 */	stw r3, 0x2d0(r29)
/* 805DB0DC  39 61 00 20 */	addi r11, r1, 0x20
/* 805DB0E0  4B AB FE 3D */	bl func_8009AF1C
/* 805DB0E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DB0E8  7C 08 03 A6 */	mtlr r0
/* 805DB0EC  38 21 00 20 */	addi r1, r1, 0x20
/* 805DB0F0  4E 80 00 20 */	blr 
