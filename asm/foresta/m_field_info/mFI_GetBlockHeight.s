lbl_803A4FEC:
/* 803A4FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803A4FF0  7C 08 02 A6 */	mflr r0
/* 803A4FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803A4FF8  4B FF FC D5 */	bl mFI_GetFieldId
/* 803A4FFC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803A5000  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803A5004  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803A5008  54 65 04 3E */	clrlwi r5, r3, 0x10
/* 803A500C  3C 64 00 02 */	addis r3, r4, 2
/* 803A5010  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803A5014  A0 63 65 1C */	lhz r3, 0x651c(r3)
/* 803A5018  41 82 00 F8 */	beq lbl_803A5110
/* 803A501C  40 80 00 10 */	bge lbl_803A502C
/* 803A5020  2C 00 30 00 */	cmpwi r0, 0x3000
/* 803A5024  41 82 00 14 */	beq lbl_803A5038
/* 803A5028  48 00 01 78 */	b lbl_803A51A0
lbl_803A502C:
/* 803A502C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803A5030  41 82 00 EC */	beq lbl_803A511C
/* 803A5034  48 00 01 6C */	b lbl_803A51A0
lbl_803A5038:
/* 803A5038  38 05 CF FF */	addi r0, r5, -12289
/* 803A503C  28 00 00 11 */	cmplwi r0, 0x11
/* 803A5040  41 81 00 C4 */	bgt lbl_803A5104
/* 803A5044  3C 60 80 65 */	lis r3, lit_581@ha /* 0x80653E00@ha */
/* 803A5048  54 00 10 3A */	slwi r0, r0, 2
/* 803A504C  38 63 3E 00 */	addi r3, r3, lit_581@l /* 0x80653E00@l */
/* 803A5050  7C 03 00 2E */	lwzx r0, r3, r0
/* 803A5054  7C 09 03 A6 */	mtctr r0
/* 803A5058  4E 80 04 20 */	bctr 
lbl_803A505C:
/* 803A505C  3C 60 80 64 */	lis r3, data_80641F1C@ha /* 0x80641F1C@ha */
/* 803A5060  C0 23 1F 1C */	lfs f1, data_80641F1C@l(r3)  /* 0x80641F1C@l */
/* 803A5064  48 00 01 44 */	b lbl_803A51A8
lbl_803A5068:
/* 803A5068  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A506C  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A5070  48 00 01 38 */	b lbl_803A51A8
lbl_803A5074:
/* 803A5074  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A5078  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A507C  48 00 01 2C */	b lbl_803A51A8
lbl_803A5080:
/* 803A5080  3C 60 80 64 */	lis r3, lit_534@ha /* 0x80641F28@ha */
/* 803A5084  C0 23 1F 28 */	lfs f1, lit_534@l(r3)  /* 0x80641F28@l */
/* 803A5088  48 00 01 20 */	b lbl_803A51A8
lbl_803A508C:
/* 803A508C  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641F30@ha */
/* 803A5090  C0 23 1F 30 */	lfs f1, lit_536@l(r3)  /* 0x80641F30@l */
/* 803A5094  48 00 01 14 */	b lbl_803A51A8
lbl_803A5098:
/* 803A5098  3C 60 80 64 */	lis r3, lit_536@ha /* 0x80641F30@ha */
/* 803A509C  C0 23 1F 30 */	lfs f1, lit_536@l(r3)  /* 0x80641F30@l */
/* 803A50A0  48 00 01 08 */	b lbl_803A51A8
lbl_803A50A4:
/* 803A50A4  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A50A8  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A50AC  48 00 00 FC */	b lbl_803A51A8
lbl_803A50B0:
/* 803A50B0  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A50B4  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A50B8  48 00 00 F0 */	b lbl_803A51A8
lbl_803A50BC:
/* 803A50BC  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A50C0  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A50C4  48 00 00 E4 */	b lbl_803A51A8
lbl_803A50C8:
/* 803A50C8  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A50CC  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A50D0  48 00 00 D8 */	b lbl_803A51A8
lbl_803A50D4:
/* 803A50D4  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A50D8  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
/* 803A50DC  48 00 00 CC */	b lbl_803A51A8
lbl_803A50E0:
/* 803A50E0  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A50E4  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A50E8  48 00 00 C0 */	b lbl_803A51A8
lbl_803A50EC:
/* 803A50EC  3C 60 80 64 */	lis r3, lit_579@ha /* 0x80641F38@ha */
/* 803A50F0  C0 23 1F 38 */	lfs f1, lit_579@l(r3)  /* 0x80641F38@l */
/* 803A50F4  48 00 00 B4 */	b lbl_803A51A8
lbl_803A50F8:
/* 803A50F8  3C 60 80 64 */	lis r3, lit_579@ha /* 0x80641F38@ha */
/* 803A50FC  C0 23 1F 38 */	lfs f1, lit_579@l(r3)  /* 0x80641F38@l */
/* 803A5100  48 00 00 A8 */	b lbl_803A51A8
lbl_803A5104:
/* 803A5104  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A5108  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A510C  48 00 00 9C */	b lbl_803A51A8
lbl_803A5110:
/* 803A5110  3C 60 80 64 */	lis r3, lit_532@ha /* 0x80641F20@ha */
/* 803A5114  C0 23 1F 20 */	lfs f1, lit_532@l(r3)  /* 0x80641F20@l */
/* 803A5118  48 00 00 90 */	b lbl_803A51A8
lbl_803A511C:
/* 803A511C  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803A5120  2C 00 00 2F */	cmpwi r0, 0x2f
/* 803A5124  40 82 00 10 */	bne lbl_803A5134
/* 803A5128  3C 60 80 64 */	lis r3, lit_533@ha /* 0x80641F24@ha */
/* 803A512C  C0 23 1F 24 */	lfs f1, lit_533@l(r3)  /* 0x80641F24@l */
/* 803A5130  48 00 00 78 */	b lbl_803A51A8
lbl_803A5134:
/* 803A5134  2C 00 00 29 */	cmpwi r0, 0x29
/* 803A5138  40 82 00 10 */	bne lbl_803A5148
/* 803A513C  3C 60 80 64 */	lis r3, lit_580@ha /* 0x80641F3C@ha */
/* 803A5140  C0 23 1F 3C */	lfs f1, lit_580@l(r3)  /* 0x80641F3C@l */
/* 803A5144  48 00 00 64 */	b lbl_803A51A8
lbl_803A5148:
/* 803A5148  2C 00 00 2A */	cmpwi r0, 0x2a
/* 803A514C  41 80 00 18 */	blt lbl_803A5164
/* 803A5150  2C 00 00 2D */	cmpwi r0, 0x2d
/* 803A5154  41 81 00 10 */	bgt lbl_803A5164
/* 803A5158  3C 60 80 64 */	lis r3, lit_533@ha /* 0x80641F24@ha */
/* 803A515C  C0 23 1F 24 */	lfs f1, lit_533@l(r3)  /* 0x80641F24@l */
/* 803A5160  48 00 00 48 */	b lbl_803A51A8
lbl_803A5164:
/* 803A5164  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 803A5168  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A516C  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A5170  7C 60 22 14 */	add r3, r0, r4
/* 803A5174  3C 63 00 01 */	addis r3, r3, 1
/* 803A5178  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 803A517C  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 803A5180  28 00 00 03 */	cmplwi r0, 3
/* 803A5184  40 81 00 08 */	ble lbl_803A518C
/* 803A5188  38 00 00 03 */	li r0, 3
lbl_803A518C:
/* 803A518C  3C 60 80 65 */	lis r3, player_room_ht@ha /* 0x80653DF0@ha */
/* 803A5190  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 803A5194  38 63 3D F0 */	addi r3, r3, player_room_ht@l /* 0x80653DF0@l */
/* 803A5198  7C 23 04 2E */	lfsx f1, r3, r0
/* 803A519C  48 00 00 0C */	b lbl_803A51A8
lbl_803A51A0:
/* 803A51A0  3C 60 80 64 */	lis r3, lit_535@ha /* 0x80641F2C@ha */
/* 803A51A4  C0 23 1F 2C */	lfs f1, lit_535@l(r3)  /* 0x80641F2C@l */
lbl_803A51A8:
/* 803A51A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803A51AC  7C 08 03 A6 */	mtlr r0
/* 803A51B0  38 21 00 10 */	addi r1, r1, 0x10
/* 803A51B4  4E 80 00 20 */	blr 
