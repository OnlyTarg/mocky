/// Internal US English words dictionary.
/// 
/// Contains approximately 1000 common English words.
const List<String> usWords = [
  // Common nouns
  'house', 'home', 'apartment', 'room', 'window', 'door', 'wall', 'floor', 'ceiling', 'roof',
  'table', 'chair', 'bed', 'closet', 'sofa', 'desk', 'shelf', 'mirror', 'clock', 'lamp',
  'book', 'notebook', 'pencil', 'pen', 'paper', 'magazine', 'newspaper', 'letter', 'envelope', 'stamp',
  'phone', 'computer', 'keyboard', 'mouse', 'monitor', 'printer', 'scanner', 'camera', 'television', 'radio',
  'car', 'bus', 'train', 'subway', 'plane', 'ship', 'bicycle', 'motorcycle', 'truck', 'van',
  'street', 'road', 'avenue', 'park', 'garden', 'forest', 'field', 'mountain', 'river', 'lake',
  'sea', 'ocean', 'island', 'beach', 'wave', 'water', 'fire', 'earth', 'air', 'wind',
  'sun', 'moon', 'star', 'sky', 'cloud', 'rain', 'snow', 'storm', 'thunder', 'lightning',
  'spring', 'summer', 'autumn', 'winter', 'day', 'night', 'morning', 'evening', 'hour', 'minute',
  'second', 'week', 'month', 'year', 'century', 'time', 'date', 'calendar', 'holiday', 'birthday',
  
  // People
  'person', 'man', 'woman', 'child', 'boy', 'girl', 'father', 'mother', 'son', 'daughter',
  'brother', 'sister', 'grandfather', 'grandmother', 'grandson', 'granddaughter', 'uncle', 'aunt', 'nephew', 'niece',
  'friend', 'neighbor', 'colleague', 'partner', 'guest', 'host', 'owner', 'customer', 'client', 'visitor',
  'student', 'teacher', 'professor', 'director', 'manager', 'employee', 'worker', 'engineer', 'programmer', 'designer',
  'doctor', 'nurse', 'patient', 'lawyer', 'judge', 'police', 'officer', 'soldier', 'captain', 'pilot',
  'driver', 'mechanic', 'builder', 'plumber', 'electrician', 'painter', 'carpenter', 'farmer', 'gardener', 'cook',
  'chef', 'waiter', 'bartender', 'baker', 'butcher', 'barber', 'artist', 'musician', 'singer', 'actor',
  'writer', 'poet', 'journalist', 'photographer', 'editor', 'publisher', 'scientist', 'researcher', 'analyst', 'consultant',
  
  // Food
  'bread', 'butter', 'cheese', 'milk', 'cream', 'yogurt', 'egg', 'meat', 'beef', 'pork',
  'chicken', 'fish', 'salmon', 'tuna', 'shrimp', 'lobster', 'crab', 'soup', 'salad', 'sandwich',
  'pizza', 'pasta', 'rice', 'noodle', 'potato', 'tomato', 'onion', 'garlic', 'pepper', 'carrot',
  'cabbage', 'lettuce', 'cucumber', 'broccoli', 'spinach', 'corn', 'bean', 'pea', 'mushroom', 'olive',
  'apple', 'orange', 'banana', 'grape', 'lemon', 'lime', 'peach', 'pear', 'plum', 'cherry',
  'strawberry', 'blueberry', 'raspberry', 'blackberry', 'melon', 'watermelon', 'pineapple', 'mango', 'kiwi', 'coconut',
  'tea', 'coffee', 'juice', 'soda', 'beer', 'wine', 'water', 'sugar', 'salt', 'flour',
  'oil', 'vinegar', 'sauce', 'ketchup', 'mustard', 'mayonnaise', 'honey', 'jam', 'chocolate', 'candy',
  
  // Clothing
  'shirt', 'blouse', 'sweater', 'jacket', 'coat', 'dress', 'skirt', 'pants', 'jeans', 'shorts',
  'suit', 'tie', 'scarf', 'hat', 'cap', 'glove', 'sock', 'shoe', 'boot', 'sandal',
  'sneaker', 'slipper', 'underwear', 'bra', 'pajama', 'robe', 'uniform', 'costume', 'belt', 'pocket',
  'button', 'zipper', 'sleeve', 'collar', 'hood', 'vest', 'cardigan', 'blazer', 'tuxedo', 'gown',
  
  // Places
  'city', 'town', 'village', 'country', 'state', 'region', 'capital', 'downtown', 'suburb', 'neighborhood',
  'building', 'office', 'store', 'shop', 'market', 'mall', 'supermarket', 'restaurant', 'cafe', 'bar',
  'hotel', 'motel', 'hospital', 'clinic', 'pharmacy', 'bank', 'library', 'museum', 'gallery', 'theater',
  'cinema', 'stadium', 'arena', 'gym', 'pool', 'court', 'field', 'track', 'school', 'college',
  'university', 'church', 'temple', 'mosque', 'synagogue', 'station', 'airport', 'port', 'bridge', 'tunnel',
  
  // Nature
  'tree', 'bush', 'grass', 'flower', 'plant', 'leaf', 'branch', 'root', 'seed', 'fruit',
  'oak', 'pine', 'maple', 'birch', 'willow', 'palm', 'rose', 'tulip', 'lily', 'daisy',
  'sunflower', 'orchid', 'violet', 'jasmine', 'lavender', 'animal', 'bird', 'fish', 'insect', 'mammal',
  'dog', 'cat', 'horse', 'cow', 'pig', 'sheep', 'goat', 'chicken', 'duck', 'rabbit',
  'mouse', 'rat', 'hamster', 'lion', 'tiger', 'bear', 'wolf', 'fox', 'deer', 'elephant',
  'giraffe', 'zebra', 'monkey', 'gorilla', 'kangaroo', 'koala', 'panda', 'eagle', 'hawk', 'owl',
  'parrot', 'pigeon', 'sparrow', 'swan', 'duck', 'goose', 'penguin', 'ostrich', 'peacock', 'crow',
  'snake', 'lizard', 'turtle', 'frog', 'toad', 'crocodile', 'alligator', 'shark', 'whale', 'dolphin',
  'octopus', 'jellyfish', 'starfish', 'crab', 'lobster', 'bee', 'wasp', 'butterfly', 'moth', 'ant',
  'spider', 'beetle', 'fly', 'mosquito', 'dragonfly', 'grasshopper', 'cricket', 'ladybug', 'worm', 'snail',
  
  // Activities
  'work', 'job', 'task', 'project', 'meeting', 'conference', 'presentation', 'report', 'study', 'research',
  'test', 'exam', 'lesson', 'class', 'lecture', 'course', 'training', 'practice', 'exercise', 'game',
  'sport', 'play', 'match', 'race', 'competition', 'tournament', 'championship', 'victory', 'defeat', 'tie',
  'walk', 'run', 'jump', 'swim', 'climb', 'dance', 'sing', 'read', 'write', 'draw',
  'paint', 'cook', 'bake', 'clean', 'wash', 'iron', 'sew', 'knit', 'build', 'fix',
  'repair', 'install', 'remove', 'replace', 'move', 'carry', 'lift', 'push', 'pull', 'throw',
  'catch', 'hit', 'kick', 'shoot', 'drive', 'ride', 'fly', 'sail', 'travel', 'visit',
  'tour', 'trip', 'journey', 'vacation', 'holiday', 'rest', 'sleep', 'dream', 'wake', 'eat',
  
  // Adjectives
  'big', 'small', 'large', 'little', 'huge', 'tiny', 'tall', 'short', 'long', 'wide',
  'narrow', 'thick', 'thin', 'heavy', 'light', 'strong', 'weak', 'hard', 'soft', 'rough',
  'smooth', 'hot', 'cold', 'warm', 'cool', 'wet', 'dry', 'clean', 'dirty', 'new',
  'old', 'young', 'fresh', 'stale', 'bright', 'dark', 'light', 'dim', 'clear', 'cloudy',
  'sunny', 'rainy', 'snowy', 'windy', 'stormy', 'calm', 'quiet', 'loud', 'noisy', 'silent',
  'fast', 'slow', 'quick', 'rapid', 'swift', 'gradual', 'sudden', 'immediate', 'instant', 'delayed',
  'early', 'late', 'punctual', 'timely', 'good', 'bad', 'great', 'terrible', 'excellent', 'poor',
  'fine', 'nice', 'pleasant', 'beautiful', 'pretty', 'handsome', 'ugly', 'attractive', 'plain', 'simple',
  'complex', 'complicated', 'easy', 'difficult', 'hard', 'simple', 'basic', 'advanced', 'elementary', 'sophisticated',
  'modern', 'ancient', 'contemporary', 'traditional', 'classic', 'vintage', 'antique', 'current', 'recent', 'past',
  
  // Abstract concepts
  'life', 'death', 'birth', 'love', 'hate', 'peace', 'war', 'joy', 'sorrow', 'happiness',
  'sadness', 'anger', 'fear', 'hope', 'faith', 'trust', 'doubt', 'belief', 'truth', 'lie',
  'fact', 'fiction', 'reality', 'fantasy', 'dream', 'nightmare', 'memory', 'thought', 'idea', 'concept',
  'theory', 'practice', 'method', 'system', 'process', 'procedure', 'technique', 'strategy', 'plan', 'goal',
  'aim', 'purpose', 'reason', 'cause', 'effect', 'result', 'consequence', 'outcome', 'success', 'failure',
  'victory', 'defeat', 'win', 'loss', 'gain', 'profit', 'benefit', 'advantage', 'disadvantage', 'problem',
  'solution', 'answer', 'question', 'issue', 'matter', 'subject', 'topic', 'theme', 'point', 'detail',
  'fact', 'data', 'information', 'knowledge', 'wisdom', 'intelligence', 'skill', 'ability', 'talent', 'gift',
  'power', 'strength', 'force', 'energy', 'effort', 'attempt', 'try', 'chance', 'opportunity', 'possibility',
  'probability', 'certainty', 'uncertainty', 'risk', 'danger', 'safety', 'security', 'protection', 'defense', 'attack',
  
  // Technology
  'internet', 'website', 'page', 'link', 'file', 'folder', 'document', 'program', 'application', 'software',
  'hardware', 'system', 'network', 'server', 'database', 'code', 'algorithm', 'data', 'byte', 'bit',
  'email', 'message', 'chat', 'forum', 'blog', 'post', 'comment', 'reply', 'share', 'like',
  'video', 'audio', 'image', 'picture', 'photo', 'graphic', 'animation', 'sound', 'music', 'song',
  'movie', 'film', 'show', 'series', 'episode', 'channel', 'station', 'broadcast', 'stream', 'download',
  'upload', 'save', 'delete', 'copy', 'paste', 'cut', 'edit', 'create', 'make', 'build',
  
  // Business
  'company', 'business', 'firm', 'corporation', 'enterprise', 'organization', 'agency', 'office', 'department', 'division',
  'team', 'group', 'staff', 'crew', 'board', 'committee', 'council', 'assembly', 'meeting', 'conference',
  'deal', 'contract', 'agreement', 'treaty', 'pact', 'arrangement', 'settlement', 'negotiation', 'discussion', 'talk',
  'sale', 'purchase', 'buy', 'sell', 'trade', 'exchange', 'transaction', 'payment', 'price', 'cost',
  'value', 'worth', 'amount', 'sum', 'total', 'balance', 'profit', 'loss', 'income', 'expense',
  'budget', 'finance', 'money', 'cash', 'currency', 'dollar', 'cent', 'coin', 'bill', 'check',
  'credit', 'debit', 'loan', 'debt', 'interest', 'rate', 'tax', 'fee', 'charge', 'fine',
  
  // Education
  'education', 'learning', 'teaching', 'instruction', 'training', 'study', 'knowledge', 'skill', 'subject', 'course',
  'program', 'curriculum', 'syllabus', 'lesson', 'lecture', 'seminar', 'workshop', 'tutorial', 'assignment', 'homework',
  'project', 'paper', 'essay', 'report', 'thesis', 'dissertation', 'research', 'experiment', 'test', 'quiz',
  'exam', 'grade', 'mark', 'score', 'result', 'certificate', 'diploma', 'degree', 'bachelor', 'master',
  
  // Colors
  'color', 'red', 'blue', 'green', 'yellow', 'orange', 'purple', 'pink', 'brown', 'black',
  'white', 'gray', 'grey', 'beige', 'tan', 'navy', 'teal', 'turquoise', 'violet', 'indigo',
  'gold', 'silver', 'bronze', 'copper', 'cream', 'ivory', 'pearl', 'maroon', 'crimson', 'scarlet',
  
  // Numbers and quantities
  'number', 'amount', 'quantity', 'total', 'sum', 'count', 'measure', 'size', 'length', 'width',
  'height', 'depth', 'weight', 'volume', 'capacity', 'distance', 'space', 'area', 'range', 'scale',
  'level', 'degree', 'rate', 'speed', 'pace', 'frequency', 'ratio', 'proportion', 'percentage', 'fraction',
  
  // Miscellaneous
  'thing', 'object', 'item', 'piece', 'part', 'element', 'component', 'unit', 'section', 'segment',
  'portion', 'share', 'lot', 'batch', 'group', 'set', 'collection', 'series', 'sequence', 'order',
  'list', 'array', 'table', 'chart', 'graph', 'diagram', 'map', 'plan', 'design', 'pattern',
  'model', 'example', 'sample', 'instance', 'case', 'situation', 'condition', 'state', 'status', 'position',
  'place', 'location', 'spot', 'site', 'point', 'area', 'zone', 'region', 'district', 'sector',
  'way', 'method', 'manner', 'mode', 'style', 'form', 'shape', 'figure', 'outline', 'structure',
  'frame', 'border', 'edge', 'corner', 'side', 'top', 'bottom', 'front', 'back', 'center',
  'middle', 'end', 'start', 'beginning', 'finish', 'conclusion', 'opening', 'closing', 'entrance', 'exit',
];
