lbl_805AC57C:
/* 805AC57C  80 08 02 B8 */	lwz r0, 0x2b8(r8)
/* 805AC580  39 20 00 00 */	li r9, 0
/* 805AC584  80 63 00 00 */	lwz r3, 0(r3)
/* 805AC588  2C 00 00 02 */	cmpwi r0, 2
/* 805AC58C  80 83 02 D0 */	lwz r4, 0x2d0(r3)
/* 805AC590  40 82 00 24 */	bne lbl_805AC5B4
/* 805AC594  80 C8 02 B4 */	lwz r6, 0x2b4(r8)
/* 805AC598  38 00 00 14 */	li r0, 0x14
/* 805AC59C  2C 05 00 04 */	cmpwi r5, 4
/* 805AC5A0  7D 06 03 D6 */	divw r8, r6, r0
/* 805AC5A4  39 08 00 01 */	addi r8, r8, 1
/* 805AC5A8  41 82 00 20 */	beq lbl_805AC5C8
/* 805AC5AC  39 08 00 05 */	addi r8, r8, 5
/* 805AC5B0  48 00 00 18 */	b lbl_805AC5C8
lbl_805AC5B4:
/* 805AC5B4  2C 05 00 04 */	cmpwi r5, 4
/* 805AC5B8  38 00 00 04 */	li r0, 4
/* 805AC5BC  40 82 00 08 */	bne lbl_805AC5C4
/* 805AC5C0  38 00 00 01 */	li r0, 1
lbl_805AC5C4:
/* 805AC5C4  7C 08 03 78 */	mr r8, r0
lbl_805AC5C8:
/* 805AC5C8  2C 05 00 05 */	cmpwi r5, 5
/* 805AC5CC  41 82 00 28 */	beq lbl_805AC5F4
/* 805AC5D0  40 80 00 10 */	bge lbl_805AC5E0
/* 805AC5D4  2C 05 00 04 */	cmpwi r5, 4
/* 805AC5D8  40 80 00 14 */	bge lbl_805AC5EC
/* 805AC5DC  48 00 00 24 */	b lbl_805AC600
lbl_805AC5E0:
/* 805AC5E0  2C 05 00 07 */	cmpwi r5, 7
/* 805AC5E4  40 80 00 1C */	bge lbl_805AC600
/* 805AC5E8  48 00 00 14 */	b lbl_805AC5FC
lbl_805AC5EC:
/* 805AC5EC  39 20 00 80 */	li r9, 0x80
/* 805AC5F0  48 00 00 10 */	b lbl_805AC600
lbl_805AC5F4:
/* 805AC5F4  39 20 00 28 */	li r9, 0x28
/* 805AC5F8  48 00 00 08 */	b lbl_805AC600
lbl_805AC5FC:
/* 805AC5FC  39 20 00 14 */	li r9, 0x14
lbl_805AC600:
/* 805AC600  2C 09 00 00 */	cmpwi r9, 0
/* 805AC604  41 82 00 B8 */	beq lbl_805AC6BC
/* 805AC608  3C 00 E7 00 */	lis r0, 0xe700
/* 805AC60C  2C 05 00 04 */	cmpwi r5, 4
/* 805AC610  90 04 00 00 */	stw r0, 0(r4)
/* 805AC614  38 00 00 00 */	li r0, 0
/* 805AC618  90 04 00 04 */	stw r0, 4(r4)
/* 805AC61C  40 82 00 48 */	bne lbl_805AC664
/* 805AC620  3C 00 FB 00 */	lis r0, 0xfb00
/* 805AC624  3C A0 80 6C */	lis r5, envcolor@ha /* 0x806C4A90@ha */
/* 805AC628  90 04 00 08 */	stw r0, 8(r4)
/* 805AC62C  55 00 10 3A */	slwi r0, r8, 2
/* 805AC630  38 A5 4A 90 */	addi r5, r5, envcolor@l /* 0x806C4A90@l */
/* 805AC634  7C E5 02 14 */	add r7, r5, r0
/* 805AC638  7C A5 00 AE */	lbzx r5, r5, r0
/* 805AC63C  88 07 00 01 */	lbz r0, 1(r7)
/* 805AC640  88 C7 00 02 */	lbz r6, 2(r7)
/* 805AC644  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805AC648  88 E7 00 03 */	lbz r7, 3(r7)
/* 805AC64C  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 805AC650  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 805AC654  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 805AC658  90 04 00 0C */	stw r0, 0xc(r4)
/* 805AC65C  38 84 00 10 */	addi r4, r4, 0x10
/* 805AC660  48 00 00 18 */	b lbl_805AC678
lbl_805AC664:
/* 805AC664  3C A0 FB 00 */	lis r5, 0xfb00
/* 805AC668  38 00 3C FF */	li r0, 0x3cff
/* 805AC66C  90 A4 00 08 */	stw r5, 8(r4)
/* 805AC670  90 04 00 0C */	stw r0, 0xc(r4)
/* 805AC674  38 84 00 10 */	addi r4, r4, 0x10
lbl_805AC678:
/* 805AC678  55 20 06 3E */	clrlwi r0, r9, 0x18
/* 805AC67C  3C A0 80 6C */	lis r5, prmcolor@ha /* 0x806C4A68@ha */
/* 805AC680  64 00 FA 00 */	oris r0, r0, 0xfa00
/* 805AC684  55 06 10 3A */	slwi r6, r8, 2
/* 805AC688  38 A5 4A 68 */	addi r5, r5, prmcolor@l /* 0x806C4A68@l */
/* 805AC68C  90 04 00 00 */	stw r0, 0(r4)
/* 805AC690  7C E5 32 14 */	add r7, r5, r6
/* 805AC694  88 07 00 01 */	lbz r0, 1(r7)
/* 805AC698  7C A5 30 AE */	lbzx r5, r5, r6
/* 805AC69C  88 C7 00 02 */	lbz r6, 2(r7)
/* 805AC6A0  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 805AC6A4  50 A0 C0 0E */	rlwimi r0, r5, 0x18, 0, 7
/* 805AC6A8  88 E7 00 03 */	lbz r7, 3(r7)
/* 805AC6AC  50 C0 44 2E */	rlwimi r0, r6, 8, 0x10, 0x17
/* 805AC6B0  50 E0 06 3E */	rlwimi r0, r7, 0, 0x18, 0x1f
/* 805AC6B4  90 04 00 04 */	stw r0, 4(r4)
/* 805AC6B8  38 84 00 08 */	addi r4, r4, 8
lbl_805AC6BC:
/* 805AC6BC  90 83 02 D0 */	stw r4, 0x2d0(r3)
/* 805AC6C0  38 60 00 01 */	li r3, 1
/* 805AC6C4  4E 80 00 20 */	blr 
