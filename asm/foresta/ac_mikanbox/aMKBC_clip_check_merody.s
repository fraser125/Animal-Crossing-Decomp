lbl_805B3D1C:
/* 805B3D1C  28 03 00 34 */	cmplwi r3, 0x34
/* 805B3D20  4C 80 00 20 */	bgelr 
/* 805B3D24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B3D28  28 03 00 20 */	cmplwi r3, 0x20
/* 805B3D2C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B3D30  3C 84 00 02 */	addis r4, r4, 2
/* 805B3D34  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 805B3D38  40 80 00 1C */	bge lbl_805B3D54
/* 805B3D3C  38 00 00 01 */	li r0, 1
/* 805B3D40  80 85 10 D4 */	lwz r4, 0x10d4(r5)
/* 805B3D44  7C 00 18 30 */	slw r0, r0, r3
/* 805B3D48  7C 80 03 78 */	or r0, r4, r0
/* 805B3D4C  90 05 10 D4 */	stw r0, 0x10d4(r5)
/* 805B3D50  4E 80 00 20 */	blr 
lbl_805B3D54:
/* 805B3D54  38 03 FF E0 */	addi r0, r3, -32
/* 805B3D58  38 60 00 01 */	li r3, 1
/* 805B3D5C  80 85 10 D8 */	lwz r4, 0x10d8(r5)
/* 805B3D60  7C 60 00 30 */	slw r0, r3, r0
/* 805B3D64  7C 80 03 78 */	or r0, r4, r0
/* 805B3D68  90 05 10 D8 */	stw r0, 0x10d8(r5)
/* 805B3D6C  4E 80 00 20 */	blr 
