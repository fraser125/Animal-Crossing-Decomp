lbl_804E1294:
/* 804E1294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1298  7C 08 02 A6 */	mflr r0
/* 804E129C  2C 03 00 00 */	cmpwi r3, 0
/* 804E12A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E12A4  38 00 00 00 */	li r0, 0
/* 804E12A8  41 80 00 10 */	blt lbl_804E12B8
/* 804E12AC  2C 03 00 09 */	cmpwi r3, 9
/* 804E12B0  40 80 00 08 */	bge lbl_804E12B8
/* 804E12B4  38 00 00 01 */	li r0, 1
lbl_804E12B8:
/* 804E12B8  2C 00 00 00 */	cmpwi r0, 0
/* 804E12BC  41 82 00 0C */	beq lbl_804E12C8
/* 804E12C0  54 83 0F FE */	srwi r3, r4, 0x1f
/* 804E12C4  48 00 01 20 */	b lbl_804E13E4
lbl_804E12C8:
/* 804E12C8  2C 03 00 09 */	cmpwi r3, 9
/* 804E12CC  38 00 00 00 */	li r0, 0
/* 804E12D0  41 80 00 10 */	blt lbl_804E12E0
/* 804E12D4  2C 03 00 0B */	cmpwi r3, 0xb
/* 804E12D8  40 80 00 08 */	bge lbl_804E12E0
/* 804E12DC  38 00 00 01 */	li r0, 1
lbl_804E12E0:
/* 804E12E0  2C 00 00 00 */	cmpwi r0, 0
/* 804E12E4  41 82 00 20 */	beq lbl_804E1304
/* 804E12E8  7C 83 23 78 */	mr r3, r4
/* 804E12EC  4B EF 7A 21 */	bl mPlib_Get_Item_DataPointerType
/* 804E12F0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804E12F4  20 00 00 02 */	subfic r0, r0, 2
/* 804E12F8  7C 00 00 34 */	cntlzw r0, r0
/* 804E12FC  54 03 D9 7E */	srwi r3, r0, 5
/* 804E1300  48 00 00 E4 */	b lbl_804E13E4
lbl_804E1304:
/* 804E1304  2C 03 00 0B */	cmpwi r3, 0xb
/* 804E1308  38 00 00 00 */	li r0, 0
/* 804E130C  41 80 00 10 */	blt lbl_804E131C
/* 804E1310  2C 03 00 33 */	cmpwi r3, 0x33
/* 804E1314  40 80 00 08 */	bge lbl_804E131C
/* 804E1318  38 00 00 01 */	li r0, 1
lbl_804E131C:
/* 804E131C  2C 00 00 00 */	cmpwi r0, 0
/* 804E1320  41 82 00 0C */	beq lbl_804E132C
/* 804E1324  54 83 0F FE */	srwi r3, r4, 0x1f
/* 804E1328  48 00 00 BC */	b lbl_804E13E4
lbl_804E132C:
/* 804E132C  2C 03 00 33 */	cmpwi r3, 0x33
/* 804E1330  38 00 00 00 */	li r0, 0
/* 804E1334  41 80 00 10 */	blt lbl_804E1344
/* 804E1338  2C 03 00 35 */	cmpwi r3, 0x35
/* 804E133C  40 80 00 08 */	bge lbl_804E1344
/* 804E1340  38 00 00 01 */	li r0, 1
lbl_804E1344:
/* 804E1344  2C 00 00 00 */	cmpwi r0, 0
/* 804E1348  41 82 00 20 */	beq lbl_804E1368
/* 804E134C  7C 83 23 78 */	mr r3, r4
/* 804E1350  4B EF 79 BD */	bl mPlib_Get_Item_DataPointerType
/* 804E1354  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804E1358  20 00 00 03 */	subfic r0, r0, 3
/* 804E135C  7C 00 00 34 */	cntlzw r0, r0
/* 804E1360  54 03 D9 7E */	srwi r3, r0, 5
/* 804E1364  48 00 00 80 */	b lbl_804E13E4
lbl_804E1368:
/* 804E1368  2C 03 00 35 */	cmpwi r3, 0x35
/* 804E136C  38 00 00 00 */	li r0, 0
/* 804E1370  41 80 00 10 */	blt lbl_804E1380
/* 804E1374  2C 03 00 37 */	cmpwi r3, 0x37
/* 804E1378  40 80 00 08 */	bge lbl_804E1380
/* 804E137C  38 00 00 01 */	li r0, 1
lbl_804E1380:
/* 804E1380  2C 00 00 00 */	cmpwi r0, 0
/* 804E1384  41 82 00 0C */	beq lbl_804E1390
/* 804E1388  54 83 0F FE */	srwi r3, r4, 0x1f
/* 804E138C  48 00 00 58 */	b lbl_804E13E4
lbl_804E1390:
/* 804E1390  2C 03 00 37 */	cmpwi r3, 0x37
/* 804E1394  38 00 00 00 */	li r0, 0
/* 804E1398  41 80 00 10 */	blt lbl_804E13A8
/* 804E139C  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804E13A0  40 80 00 08 */	bge lbl_804E13A8
/* 804E13A4  38 00 00 01 */	li r0, 1
lbl_804E13A8:
/* 804E13A8  2C 00 00 00 */	cmpwi r0, 0
/* 804E13AC  41 82 00 0C */	beq lbl_804E13B8
/* 804E13B0  54 83 0F FE */	srwi r3, r4, 0x1f
/* 804E13B4  48 00 00 30 */	b lbl_804E13E4
lbl_804E13B8:
/* 804E13B8  2C 03 00 3F */	cmpwi r3, 0x3f
/* 804E13BC  38 00 00 00 */	li r0, 0
/* 804E13C0  41 80 00 10 */	blt lbl_804E13D0
/* 804E13C4  2C 03 00 47 */	cmpwi r3, 0x47
/* 804E13C8  40 80 00 08 */	bge lbl_804E13D0
/* 804E13CC  38 00 00 01 */	li r0, 1
lbl_804E13D0:
/* 804E13D0  2C 00 00 00 */	cmpwi r0, 0
/* 804E13D4  41 82 00 0C */	beq lbl_804E13E0
/* 804E13D8  54 83 0F FE */	srwi r3, r4, 0x1f
/* 804E13DC  48 00 00 08 */	b lbl_804E13E4
lbl_804E13E0:
/* 804E13E0  38 60 00 00 */	li r3, 0
lbl_804E13E4:
/* 804E13E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E13E8  7C 08 03 A6 */	mtlr r0
/* 804E13EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E13F0  4E 80 00 20 */	blr 
