lbl_8046F120:
/* 8046F120  2C 04 00 00 */	cmpwi r4, 0
/* 8046F124  40 82 00 1C */	bne lbl_8046F140
/* 8046F128  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8046F12C  38 00 00 00 */	li r0, 0
/* 8046F130  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8046F134  3C 63 00 02 */	addis r3, r3, 2
/* 8046F138  90 03 60 A8 */	stw r0, 0x60a8(r3)
/* 8046F13C  4E 80 00 20 */	blr 
lbl_8046F140:
/* 8046F140  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8046F144  3D 20 80 47 */	lis r9, aMI_ChangeWall@ha /* 0x8046FFB4@ha */
/* 8046F148  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8046F14C  3D 00 80 47 */	lis r8, aMI_ChangeCarpet@ha /* 0x8046FE5C@ha */
/* 8046F150  39 43 01 B8 */	addi r10, r3, 0x1b8
/* 8046F154  3C E0 80 47 */	lis r7, aMI_IndoorDmaAgain@ha /* 0x80470138@ha */
/* 8046F158  3C 84 00 02 */	addis r4, r4, 2
/* 8046F15C  3C C0 80 47 */	lis r6, aMI_Change2Default@ha /* 0x8047010C@ha */
/* 8046F160  91 44 60 A8 */	stw r10, 0x60a8(r4)
/* 8046F164  3C A0 80 47 */	lis r5, aMI_WallIdx2ChangeWall@ha /* 0x80470060@ha */
/* 8046F168  3C 80 80 47 */	lis r4, aMI_FloorIdx2ChangeFloor@ha /* 0x8046FF08@ha */
/* 8046F16C  38 09 FF B4 */	addi r0, r9, aMI_ChangeWall@l /* 0x8046FFB4@l */
/* 8046F170  90 63 01 B8 */	stw r3, 0x1b8(r3)
/* 8046F174  39 08 FE 5C */	addi r8, r8, aMI_ChangeCarpet@l /* 0x8046FE5C@l */
/* 8046F178  38 E7 01 38 */	addi r7, r7, aMI_IndoorDmaAgain@l /* 0x80470138@l */
/* 8046F17C  38 C6 01 0C */	addi r6, r6, aMI_Change2Default@l /* 0x8047010C@l */
/* 8046F180  90 03 01 BC */	stw r0, 0x1bc(r3)
/* 8046F184  38 65 00 60 */	addi r3, r5, aMI_WallIdx2ChangeWall@l /* 0x80470060@l */
/* 8046F188  38 04 FF 08 */	addi r0, r4, aMI_FloorIdx2ChangeFloor@l /* 0x8046FF08@l */
/* 8046F18C  91 0A 00 08 */	stw r8, 8(r10)
/* 8046F190  90 EA 00 0C */	stw r7, 0xc(r10)
/* 8046F194  90 CA 00 10 */	stw r6, 0x10(r10)
/* 8046F198  90 6A 00 14 */	stw r3, 0x14(r10)
/* 8046F19C  90 0A 00 18 */	stw r0, 0x18(r10)
/* 8046F1A0  4E 80 00 20 */	blr 
