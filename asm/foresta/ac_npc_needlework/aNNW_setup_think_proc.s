lbl_80565FEC:
/* 80565FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565FF0  7C 08 02 A6 */	mflr r0
/* 80565FF4  3C C0 80 6B */	lis r6, data_806AA510@ha /* 0x806AA510@ha */
/* 80565FF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565FFC  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80566000  38 C6 A5 10 */	addi r6, r6, data_806AA510@l /* 0x806AA510@l */
/* 80566004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566008  1C 00 00 05 */	mulli r0, r0, 5
/* 8056600C  3D 06 00 01 */	addis r8, r6, 1
/* 80566010  98 A3 09 AF */	stb r5, 0x9af(r3)
/* 80566014  7C 7F 1B 78 */	mr r31, r3
/* 80566018  39 28 3D 4C */	addi r9, r8, 0x3d4c
/* 8056601C  38 E8 3D 98 */	addi r7, r8, 0x3d98
/* 80566020  7D 29 02 14 */	add r9, r9, r0
/* 80566024  38 C8 3D D0 */	addi r6, r8, 0x3dd0
/* 80566028  88 09 00 00 */	lbz r0, 0(r9)
/* 8056602C  38 A8 3D B8 */	addi r5, r8, 0x3db8
/* 80566030  54 00 10 3A */	slwi r0, r0, 2
/* 80566034  7C 07 00 2E */	lwzx r0, r7, r0
/* 80566038  90 03 09 94 */	stw r0, 0x994(r3)
/* 8056603C  88 09 00 02 */	lbz r0, 2(r9)
/* 80566040  54 00 10 3A */	slwi r0, r0, 2
/* 80566044  7C 06 00 2E */	lwzx r0, r6, r0
/* 80566048  90 03 09 64 */	stw r0, 0x964(r3)
/* 8056604C  88 09 00 03 */	lbz r0, 3(r9)
/* 80566050  98 03 09 B2 */	stb r0, 0x9b2(r3)
/* 80566054  88 09 00 04 */	lbz r0, 4(r9)
/* 80566058  98 03 09 B0 */	stb r0, 0x9b0(r3)
/* 8056605C  88 09 00 01 */	lbz r0, 1(r9)
/* 80566060  54 00 10 3A */	slwi r0, r0, 2
/* 80566064  7D 85 00 2E */	lwzx r12, r5, r0
/* 80566068  7D 89 03 A6 */	mtctr r12
/* 8056606C  4E 80 04 21 */	bctrl 
/* 80566070  38 00 00 01 */	li r0, 1
/* 80566074  98 1F 09 B3 */	stb r0, 0x9b3(r31)
/* 80566078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056607C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566080  7C 08 03 A6 */	mtlr r0
/* 80566084  38 21 00 10 */	addi r1, r1, 0x10
/* 80566088  4E 80 00 20 */	blr 
