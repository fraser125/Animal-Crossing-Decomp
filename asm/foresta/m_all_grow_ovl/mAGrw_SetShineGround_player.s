lbl_8050F9EC:
/* 8050F9EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F9F0  7C 08 02 A6 */	mflr r0
/* 8050F9F4  2C 04 00 00 */	cmpwi r4, 0
/* 8050F9F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F9FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050FA00  41 80 00 C4 */	blt lbl_8050FAC4
/* 8050FA04  2C 04 00 05 */	cmpwi r4, 5
/* 8050FA08  40 80 00 BC */	bge lbl_8050FAC4
/* 8050FA0C  54 80 10 3A */	slwi r0, r4, 2
/* 8050FA10  7F E3 02 14 */	add r31, r3, r0
/* 8050FA14  7F E3 FB 78 */	mr r3, r31
/* 8050FA18  4B FF FD E5 */	bl mAGrw_CheckFreeSSPosInfo_com
/* 8050FA1C  2C 03 00 00 */	cmpwi r3, 0
/* 8050FA20  40 82 00 9C */	bne lbl_8050FABC
/* 8050FA24  88 BF 00 00 */	lbz r5, 0(r31)
/* 8050FA28  28 05 00 00 */	cmplwi r5, 0
/* 8050FA2C  41 82 00 84 */	beq lbl_8050FAB0
/* 8050FA30  28 05 00 06 */	cmplwi r5, 6
/* 8050FA34  40 80 00 7C */	bge lbl_8050FAB0
/* 8050FA38  88 7F 00 01 */	lbz r3, 1(r31)
/* 8050FA3C  28 03 00 00 */	cmplwi r3, 0
/* 8050FA40  41 82 00 70 */	beq lbl_8050FAB0
/* 8050FA44  28 03 00 07 */	cmplwi r3, 7
/* 8050FA48  40 80 00 68 */	bge lbl_8050FAB0
/* 8050FA4C  88 DF 00 02 */	lbz r6, 2(r31)
/* 8050FA50  28 06 00 10 */	cmplwi r6, 0x10
/* 8050FA54  40 80 00 5C */	bge lbl_8050FAB0
/* 8050FA58  88 FF 00 03 */	lbz r7, 3(r31)
/* 8050FA5C  28 07 00 10 */	cmplwi r7, 0x10
/* 8050FA60  40 80 00 50 */	bge lbl_8050FAB0
/* 8050FA64  38 03 FF FF */	addi r0, r3, -1
/* 8050FA68  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FA6C  1C 80 0A 00 */	mulli r4, r0, 0xa00
/* 8050FA70  38 05 FF FF */	addi r0, r5, -1
/* 8050FA74  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FA78  7C 83 22 14 */	add r4, r3, r4
/* 8050FA7C  54 00 48 2C */	slwi r0, r0, 9
/* 8050FA80  7C 84 02 14 */	add r4, r4, r0
/* 8050FA84  54 E3 2C F4 */	rlwinm r3, r7, 5, 0x13, 0x1a
/* 8050FA88  3C 84 00 01 */	addis r4, r4, 1
/* 8050FA8C  54 C0 0D FC */	rlwinm r0, r6, 1, 0x17, 0x1e
/* 8050FA90  7C 64 1A 14 */	add r3, r4, r3
/* 8050FA94  7C 63 02 14 */	add r3, r3, r0
/* 8050FA98  A4 03 37 A8 */	lhzu r0, 0x37a8(r3)
/* 8050FA9C  28 00 00 00 */	cmplwi r0, 0
/* 8050FAA0  40 82 00 24 */	bne lbl_8050FAC4
/* 8050FAA4  38 00 00 5C */	li r0, 0x5c
/* 8050FAA8  B0 03 00 00 */	sth r0, 0(r3)
/* 8050FAAC  48 00 00 18 */	b lbl_8050FAC4
lbl_8050FAB0:
/* 8050FAB0  7F E3 FB 78 */	mr r3, r31
/* 8050FAB4  4B FF FC AD */	bl func_8050F760
/* 8050FAB8  48 00 00 0C */	b lbl_8050FAC4
lbl_8050FABC:
/* 8050FABC  7F E3 FB 78 */	mr r3, r31
/* 8050FAC0  4B FF FC A1 */	bl func_8050F760
lbl_8050FAC4:
/* 8050FAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050FAC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050FACC  7C 08 03 A6 */	mtlr r0
/* 8050FAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8050FAD4  4E 80 00 20 */	blr 
