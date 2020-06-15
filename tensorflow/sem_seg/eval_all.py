import numpy as np
import argparse

pred_data_label_filenames = []
for i in range(1,7):
  file_name = 'log{}/output_filelist.txt'.format(i)
  pred_data_label_filenames += [line.rstrip() for line in open(file_name)]

gt_label_filenames = [f.rstrip('_pred\.txt') + '_gt.txt' for f in pred_data_label_filenames]

num_room = len(gt_label_filenames)

gt_classes = [0 for _ in range(2)]
positive_classes = [0 for _ in range(2)]
true_positive_classes = [0 for _ in range(2)]

for i in range(num_room):
  print(i)
  data_label = np.loadtxt(pred_data_label_filenames[i])
  pred_label = data_label[:,-1]
  gt_label = np.loadtxt(gt_label_filenames[i])
  print(gt_label.shape)
  for j in range(gt_label.shape[0]):
    gt_l = int(gt_label[j])
    pred_l = int(pred_label[j])
    gt_classes[gt_l] += 1
    positive_classes[pred_l] += 1
    true_positive_classes[gt_l] += int(gt_l==pred_l)


print(gt_classes)
print(positive_classes)
print(true_positive_classes)

print('Overall accuracy: {0}'.format(sum(true_positive_classes)/float(sum(positive_classes))))


print("Precision:")
precision_list = []
for i in range(2):
    if positive_classes[i] == 0:
        prec = 0
        print(prec)
        precision_list.append(prec)

    elif true_positive_classes[i] == 0:
        prec = 0
        print(prec)
        precision_list.append(prec)

    else:
        prec = true_positive_classes[i] / float(positive_classes[i])
        print(prec)
        precision_list.append(prec)

print(sum(precision_list) / 2.0)

print("Recall:")
recall_list = []
for i in range(2):
    if true_positive_classes[i] == 0:
        rec = 0
        print(rec)
        recall_list.append(rec)
    else:
        rec = true_positive_classes[i] / float(gt_classes[i])
        print(rec)
        recall_list.append(rec)

print(sum(recall_list) / 2.0)

print("F-Score:")
fscore_list = []
for i in range(2):

    if precision_list[i] + recall_list[i] == 0:
        fscore = 0
        print(fscore)
        fscore_list.append(fscore)
    else:
        fscore = (
            2
            * precision_list[i]
            * recall_list[i]
            / float(precision_list[i] + recall_list[i])
        )
        print(fscore)
        fscore_list.append(fscore)

print(sum(fscore_list) / 2.0)

print ('IoU:')
iou_list = []
for i in range(2):
#  print('ke {} value {} {} {}'.format(i, gt_classes[i], positive_classes[i], true_positive_classes[i]))
  iou = true_positive_classes[i]/float(gt_classes[i]+positive_classes[i]-true_positive_classes[i]) 
  print(iou)
  iou_list.append(iou)

print ('avg IoU:')
print(sum(iou_list)/2)
